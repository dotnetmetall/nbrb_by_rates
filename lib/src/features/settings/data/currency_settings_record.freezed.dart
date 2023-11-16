// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_settings_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencySettingsRecord _$CurrencySettingsRecordFromJson(
    Map<String, dynamic> json) {
  return _CurrencySettingsRecord.fromJson(json);
}

/// @nodoc
mixin _$CurrencySettingsRecord {
  int get position => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencySettingsRecordCopyWith<CurrencySettingsRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencySettingsRecordCopyWith<$Res> {
  factory $CurrencySettingsRecordCopyWith(CurrencySettingsRecord value,
          $Res Function(CurrencySettingsRecord) then) =
      _$CurrencySettingsRecordCopyWithImpl<$Res, CurrencySettingsRecord>;
  @useResult
  $Res call({int position, String code, bool isEnabled});
}

/// @nodoc
class _$CurrencySettingsRecordCopyWithImpl<$Res,
        $Val extends CurrencySettingsRecord>
    implements $CurrencySettingsRecordCopyWith<$Res> {
  _$CurrencySettingsRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? code = null,
    Object? isEnabled = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencySettingsRecordImplCopyWith<$Res>
    implements $CurrencySettingsRecordCopyWith<$Res> {
  factory _$$CurrencySettingsRecordImplCopyWith(
          _$CurrencySettingsRecordImpl value,
          $Res Function(_$CurrencySettingsRecordImpl) then) =
      __$$CurrencySettingsRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, String code, bool isEnabled});
}

/// @nodoc
class __$$CurrencySettingsRecordImplCopyWithImpl<$Res>
    extends _$CurrencySettingsRecordCopyWithImpl<$Res,
        _$CurrencySettingsRecordImpl>
    implements _$$CurrencySettingsRecordImplCopyWith<$Res> {
  __$$CurrencySettingsRecordImplCopyWithImpl(
      _$CurrencySettingsRecordImpl _value,
      $Res Function(_$CurrencySettingsRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? code = null,
    Object? isEnabled = null,
  }) {
    return _then(_$CurrencySettingsRecordImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencySettingsRecordImpl implements _CurrencySettingsRecord {
  const _$CurrencySettingsRecordImpl(
      {required this.position, required this.code, required this.isEnabled});

  factory _$CurrencySettingsRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencySettingsRecordImplFromJson(json);

  @override
  final int position;
  @override
  final String code;
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'CurrencySettingsRecord(position: $position, code: $code, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencySettingsRecordImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position, code, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencySettingsRecordImplCopyWith<_$CurrencySettingsRecordImpl>
      get copyWith => __$$CurrencySettingsRecordImplCopyWithImpl<
          _$CurrencySettingsRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencySettingsRecordImplToJson(
      this,
    );
  }
}

abstract class _CurrencySettingsRecord implements CurrencySettingsRecord {
  const factory _CurrencySettingsRecord(
      {required final int position,
      required final String code,
      required final bool isEnabled}) = _$CurrencySettingsRecordImpl;

  factory _CurrencySettingsRecord.fromJson(Map<String, dynamic> json) =
      _$CurrencySettingsRecordImpl.fromJson;

  @override
  int get position;
  @override
  String get code;
  @override
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$$CurrencySettingsRecordImplCopyWith<_$CurrencySettingsRecordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
