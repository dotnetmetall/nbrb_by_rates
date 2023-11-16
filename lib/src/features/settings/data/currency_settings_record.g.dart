// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_settings_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencySettingsRecordImpl _$$CurrencySettingsRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrencySettingsRecordImpl(
      position: json['position'] as int,
      code: json['code'] as String,
      isEnabled: json['isEnabled'] as bool,
    );

Map<String, dynamic> _$$CurrencySettingsRecordImplToJson(
        _$CurrencySettingsRecordImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'code': instance.code,
      'isEnabled': instance.isEnabled,
    };
