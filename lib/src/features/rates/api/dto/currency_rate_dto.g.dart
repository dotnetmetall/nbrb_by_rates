// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyRateDtoImpl _$$CurrencyRateDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrencyRateDtoImpl(
      curId: json['Cur_ID'] as int,
      date: DateTime.parse(json['Date'] as String),
      curAbbreviation: json['Cur_Abbreviation'] as String,
      curScale: json['Cur_Scale'] as int,
      curName: json['Cur_Name'] as String,
      curOfficialRate: (json['Cur_OfficialRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$CurrencyRateDtoImplToJson(
        _$CurrencyRateDtoImpl instance) =>
    <String, dynamic>{
      'Cur_ID': instance.curId,
      'Date': instance.date.toIso8601String(),
      'Cur_Abbreviation': instance.curAbbreviation,
      'Cur_Scale': instance.curScale,
      'Cur_Name': instance.curName,
      'Cur_OfficialRate': instance.curOfficialRate,
    };
