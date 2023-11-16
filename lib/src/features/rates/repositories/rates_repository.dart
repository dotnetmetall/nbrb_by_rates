import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rates_app/src/common/errors/connectivity_error.dart';
import 'package:rates_app/src/data/currency.dart';
import 'package:rates_app/src/features/rates/api/dto/currency_rate_dto.dart';
import '../data/currency_rate.dart';
import 'irates_repository.dart';

@Injectable(as: IRatesRepository)
class RatesRepository implements IRatesRepository {
  final Dio _httpClient;

  RatesRepository(Dio httpClient) : _httpClient = httpClient;

  @override
  Future<List<CurrencyRate>> getRatesAsync(DateTime date, List<String> currencyCodes) async {
    var ratesDto = await _requestRatesAsync(date);
    return ratesDto
        .where((c) => currencyCodes.contains(c.curAbbreviation))
        .map((c) => CurrencyRate(
            currency: Currency(name: c.curName, code: c.curAbbreviation, scale: c.curScale, multipleName: c.curName),
            rate: c.curOfficialRate))
        .toList();
  }

  Future<Iterable<CurrencyRateDto>> _requestRatesAsync(DateTime dateTime) async {
    try {
      var dateParameter = Uri.encodeComponent("${dateTime.month}/${dateTime.day}/${dateTime.year}");
      var response = await _httpClient.get("/exrates/rates?&periodicity=0&ondate=$dateParameter");
      List jsonList = response.data;
      return jsonList.map((item) => CurrencyRateDto.fromJson(item));
    } on DioError catch (error, stack) {
      var errorType = error.type;

      if (errorType == DioErrorType.connectTimeout ||
          errorType == DioErrorType.sendTimeout ||
          errorType == DioErrorType.receiveTimeout ||
          error.error is SocketException ||
          error.error is HttpException) {
        throw ConnectivityError();
      }

      rethrow;
    }
  }
}
