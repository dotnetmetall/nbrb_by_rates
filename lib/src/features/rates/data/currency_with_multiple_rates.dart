import 'package:rates_app/src/data/currency.dart';
import 'rate_on_date.dart';

class CurrencyWithMultipleRates {
  final Currency currency;
  final List<RateOnDate> rates;

  CurrencyWithMultipleRates(this.currency, this.rates);
}
