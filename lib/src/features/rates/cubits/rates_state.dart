import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/currency_with_multiple_rates.dart';

part 'rates_state.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class RatesState with _$RatesState {
  const factory RatesState.loading() = _Loading;
  const factory RatesState.loaded({required List<DateTime> dates, required List<CurrencyWithMultipleRates> currenciesWithMultipleRates}) = _Loaded;
  const factory RatesState.failed() = _Failed;
}
