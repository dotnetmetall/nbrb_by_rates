import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:rates_app/src/common/errors/connectivity_error.dart';
import 'package:rates_app/src/common/extensions/iterable_extension.dart';
import 'package:rates_app/src/features/rates/cubits/rates_state.dart';
import 'package:rates_app/src/features/rates/data/currency_with_multiple_rates.dart';
import 'package:rates_app/src/features/rates/data/rate_on_date.dart';
import 'package:rates_app/src/features/settings/data/settings.dart';
import '../../settings/repositories/isettings_repository.dart';
import '../repositories/irates_repository.dart';

@injectable
class RatesCubit extends Cubit<RatesState> {
  final IRatesRepository _ratesRepository;
  final ISettingsRepository _settingsRepository;
  final Logger _logger = Logger('RatesCubit');

  late List<String> _enabledCurrencies;

  StreamSubscription<Settings>? _settingsChangesSubscription;

  RatesCubit(IRatesRepository ratesRepository, ISettingsRepository settingsRepository)
      : _ratesRepository = ratesRepository,
        _settingsRepository = settingsRepository,
        super(const RatesState.loading()) {
    _init();
  }

  @override
  Future<void> close() {
    _settingsChangesSubscription?.cancel();

    return super.close();
  }

  Future<void> updatesAsync() {
    try {
      return _updateRatesAsync();
    } on ConnectivityError {
      emit(const RatesState.failed());
    } catch (error, stack) {
      _logger.severe('Failed update rates when refresh', error, stack);
      emit(const RatesState.failed());
    }

    return Future.value();
  }

  void _init() async {
    var settings = _settingsRepository.get();
    _enabledCurrencies =
        settings.currenciesSettings.where((element) => element.isEnabled).map((element) => element.code).toList();
    _settingsChangesSubscription = _settingsRepository.onChanged.listen(_onSettingsChanged);

    try {
      await _updateRatesAsync();
    } on ConnectivityError {
      emit(const RatesState.failed());
    } catch (error, stack) {
      _logger.severe('Failed update rates while initialization', error, stack);
      emit(const RatesState.failed());
    }
  }

  Future<void> _updateRatesAsync() async {
    var today = DateTime.now();
    var yesterday = today.add(const Duration(days: -1));
    var tomorrow = today.add(const Duration(days: 1));

    Map<String, CurrencyWithMultipleRates> currencyRatesMap = <String, CurrencyWithMultipleRates>{};
    List<DateTime> dates = [];

    var todayRates = await _ratesRepository.getRatesAsync(today, _enabledCurrencies);
    dates.add(today);
    for (var r in todayRates) {
      var currencyWithMultipleRates = CurrencyWithMultipleRates(r.currency, [RateOnDate(today, r.rate)]);
      currencyRatesMap[r.currency.code] = currencyWithMultipleRates;
    }

    var tomorrowRates = await _ratesRepository.getRatesAsync(tomorrow, _enabledCurrencies);
    if (tomorrowRates.isEmpty) {
      var yesterdayRates = await _ratesRepository.getRatesAsync(yesterday, _enabledCurrencies);
      dates.insert(0, yesterday);
      var yesterdayRatesToCurrencyMap = yesterdayRates.toMap((e) => e.currency.code, (e) => e);
      for (var c in currencyRatesMap.keys) {
        var yesterdayRate = yesterdayRatesToCurrencyMap[c];
        if (yesterdayRate == null) {
          currencyRatesMap[c]!.rates.add(RateOnDate(tomorrow, 0.0));
        } else {
          currencyRatesMap[c]!.rates.add(RateOnDate(tomorrow, yesterdayRate.rate));
        }
      }
    } else {
      dates.add(tomorrow);
      var tomorrowRatesToCurrencyMap = tomorrowRates.toMap((e) => e.currency.code, (e) => e);
      for (var c in currencyRatesMap.keys) {
        var tomorrowRate = tomorrowRatesToCurrencyMap[c];
        if (tomorrowRate == null) {
          currencyRatesMap[c]!.rates.add(RateOnDate(tomorrow, 0.0));
        } else {
          currencyRatesMap[c]!.rates.add(RateOnDate(tomorrow, tomorrowRate.rate));
        }
      }
    }

    emit(RatesState.loaded(
        dates: dates,
        currenciesWithMultipleRates: _enabledCurrencies
            .where((e) => currencyRatesMap.containsKey(e))
            .map((e) => currencyRatesMap[e]!)
            .toList()));
  }

  void _onSettingsChanged(Settings settings) async {
    try {
      _enabledCurrencies =
          settings.currenciesSettings.where((element) => element.isEnabled).map((element) => element.code).toList();
      emit(const RatesState.loading());
      await _updateRatesAsync();
    } on ConnectivityError {
      emit(const RatesState.failed());
    } catch (error, stack) {
      _logger.severe('Failed update rates when settings changed', error, stack);
      emit(const RatesState.failed());
    }
  }
}
