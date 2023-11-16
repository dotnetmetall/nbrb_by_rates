import '../data/currency_rate.dart';

interface class IRatesRepository {
  Future<List<CurrencyRate>> getRatesAsync(DateTime date, List<String> currencyCodes) {
    throw UnimplementedError();
  }
}