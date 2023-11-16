import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_settings_record.freezed.dart';
part 'currency_settings_record.g.dart';

@freezed
abstract class CurrencySettingsRecord with _$CurrencySettingsRecord {
  const factory CurrencySettingsRecord({required int position, required String code, required bool isEnabled}) =
      _CurrencySettingsRecord;

  factory CurrencySettingsRecord.fromJson(Map<String, dynamic> jsonMap) => _$CurrencySettingsRecordFromJson(jsonMap);
}