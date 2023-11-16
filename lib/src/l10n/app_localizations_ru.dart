import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get currenciesSettings => 'Настройка валют';

  @override
  String get currencyRates => 'Курсы валют';

  @override
  String get somethingWentWrong => 'Упс, что-то пошло не так. Попробуйте обновить список, потянув его вниз';
}
