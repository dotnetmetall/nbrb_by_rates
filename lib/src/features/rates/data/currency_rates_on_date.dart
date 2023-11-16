import 'currency_rate.dart';

class CurrencyRatesOnDate {
  final DateTime date;
  final List<CurrencyRate> rates;

  CurrencyRatesOnDate(this.date, this.rates);
}