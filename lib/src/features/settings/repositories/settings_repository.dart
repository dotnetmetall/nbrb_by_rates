import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/currency_settings_record.dart';
import '../data/settings.dart';
import 'isettings_repository.dart';

@Singleton(as: ISettingsRepository)
class SettingsRepository implements ISettingsRepository {
  static const String _currenciesSettingsKey = "enabled_currencies";

  final SharedPreferences _sharedPreferences;
  final StreamController<Settings> _onChangedStreamController = StreamController<Settings>.broadcast();

  Settings? _settingsCached;

  SettingsRepository(SharedPreferences sharedPreferences) : _sharedPreferences = sharedPreferences;

  @override
  Stream<Settings> get onChanged => _onChangedStreamController.stream;

  @PostConstruct(preResolve: true)
  Future<void> preloadSettingsAsync() async {
    var jsonString = _sharedPreferences.getString(_currenciesSettingsKey);
    if (jsonString == null) {
      _settingsCached = Settings([
        const CurrencySettingsRecord(position: 0, code: 'USD', isEnabled: true),
        const CurrencySettingsRecord(position: 1, code: 'EUR', isEnabled: true),
        const CurrencySettingsRecord(position: 2, code: 'RUB', isEnabled: true),
        const CurrencySettingsRecord(position: 3, code: 'AUD', isEnabled: false),
        const CurrencySettingsRecord(position: 4, code: 'AMD', isEnabled: false),
        const CurrencySettingsRecord(position: 5, code: 'BGN', isEnabled: false),
        const CurrencySettingsRecord(position: 6, code: 'BRL', isEnabled: false),
        const CurrencySettingsRecord(position: 7, code: 'UAH', isEnabled: false),
        const CurrencySettingsRecord(position: 8, code: 'DKK', isEnabled: false),
        const CurrencySettingsRecord(position: 9, code: 'AED', isEnabled: false),
        const CurrencySettingsRecord(position: 10, code: 'VND', isEnabled: false),
        const CurrencySettingsRecord(position: 11, code: 'PLN', isEnabled: false),
        const CurrencySettingsRecord(position: 12, code: 'JPY', isEnabled: false),
        const CurrencySettingsRecord(position: 13, code: 'INR', isEnabled: false),
        const CurrencySettingsRecord(position: 14, code: 'IRR', isEnabled: false),
        const CurrencySettingsRecord(position: 15, code: 'ISK', isEnabled: false),
        const CurrencySettingsRecord(position: 16, code: 'CAD', isEnabled: false),
        const CurrencySettingsRecord(position: 17, code: 'CNY', isEnabled: false),
        const CurrencySettingsRecord(position: 18, code: 'KWD', isEnabled: false),
        const CurrencySettingsRecord(position: 19, code: 'MDL', isEnabled: false),
        const CurrencySettingsRecord(position: 20, code: 'NZD', isEnabled: false),
        const CurrencySettingsRecord(position: 21, code: 'NOK', isEnabled: false),
        const CurrencySettingsRecord(position: 22, code: 'XDR', isEnabled: false),
        const CurrencySettingsRecord(position: 23, code: 'SGD', isEnabled: false),
        const CurrencySettingsRecord(position: 24, code: 'KGS', isEnabled: false),
        const CurrencySettingsRecord(position: 25, code: 'KZT', isEnabled: false),
        const CurrencySettingsRecord(position: 26, code: 'TRY', isEnabled: false),
        const CurrencySettingsRecord(position: 27, code: 'GBP', isEnabled: false),
        const CurrencySettingsRecord(position: 28, code: 'CZK', isEnabled: false),
        const CurrencySettingsRecord(position: 29, code: 'SEK', isEnabled: false),
        const CurrencySettingsRecord(position: 30, code: 'CHF', isEnabled: false),
      ]);
      return;
    }
    var currencySettings = await compute<String, List<CurrencySettingsRecord>>((arg) {
      var list = jsonDecode(arg) as List;
      return list.map((e) => CurrencySettingsRecord.fromJson(e)).toList();
    }, jsonString);

    _settingsCached = Settings(currencySettings);
  }

  @override
  Settings get() {
    return Settings(_settingsCached!.currenciesSettings.toList());
  }

  @override
  Future<void> saveAsync(Settings settings) async {
    _settingsCached = settings;
    _onChangedStreamController.add(settings);
    var jsonSettings = await compute((message) => jsonEncode(message), settings.currenciesSettings);
    await _sharedPreferences.setString(_currenciesSettingsKey, jsonSettings);
  }
}
