import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_rate_dto.freezed.dart';
part 'currency_rate_dto.g.dart';

@freezed
abstract class CurrencyRateDto with _$CurrencyRateDto {
  const factory CurrencyRateDto(
      {@JsonKey(name: "Cur_ID") required int curId,
      @JsonKey(name: "Date") required DateTime date,
      @JsonKey(name: "Cur_Abbreviation") required String curAbbreviation,
      @JsonKey(name: "Cur_Scale") required int curScale,
      @JsonKey(name: "Cur_Name") required String curName,
      @JsonKey(name: "Cur_OfficialRate") required double curOfficialRate}) = _CurrencyRateDto;

  factory CurrencyRateDto.fromJson(Map<String, dynamic> jsonMap) => _$CurrencyRateDtoFromJson(jsonMap);
}
