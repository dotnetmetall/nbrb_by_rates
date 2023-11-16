import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rates_app/src/features/settings/data/currency_settings_record.dart';

part 'settings_state.freezed.dart';

@Freezed(toJson: false, fromJson: false)
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.init() = _Init;
  const factory SettingsState.changingSettings() = _ChangingSettings;
  const factory SettingsState.loaded({required List<CurrencySettingsRecord> currencySettingsRecords}) = _Loaded;
}