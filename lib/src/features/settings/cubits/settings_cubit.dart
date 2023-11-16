import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:rates_app/src/features/settings/cubits/settings_state.dart';
import '../data/settings.dart';
import '../repositories/isettings_repository.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  final Logger _logger = Logger('SettingsCubit');
  final ISettingsRepository _settingsRepository;

  late Settings _settings;

  SettingsCubit(ISettingsRepository settingsRepository)
      : _settingsRepository = settingsRepository,
        super(const SettingsState.init()) {
    _init();
  }

  void changeCurrencyState(int index, bool isEnabled) {
    emit(const SettingsState.changingSettings());
    var record = _settings.currenciesSettings[index];
    _settings.currenciesSettings[index] = record.copyWith(isEnabled: isEnabled);
    emit(SettingsState.loaded(currencySettingsRecords: _settings.currenciesSettings));
  }

  void changeOrder(int oldIndex, int newIndex) {
    emit(const SettingsState.changingSettings());
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    var item = _settings.currenciesSettings.removeAt(oldIndex);
    _settings.currenciesSettings.insert(newIndex, item);

    emit(SettingsState.loaded(currencySettingsRecords: _settings.currenciesSettings));
  }

  void save() async {
    try {
      await _settingsRepository.saveAsync(_settings);
    } catch (error, stack) {
      _logger.severe('Failed save settings', error, stack);
    }
  }

  void _init() {
    _settings = _settingsRepository.get();
    emit(SettingsState.loaded(currencySettingsRecords: _settings.currenciesSettings));
  }
}
