// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_rate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyRateDto _$CurrencyRateDtoFromJson(Map<String, dynamic> json) {
  return _CurrencyRateDto.fromJson(json);
}

/// @nodoc
mixin _$CurrencyRateDto {
  @JsonKey(name: "Cur_ID")
  int get curId => throw _privateConstructorUsedError;
  @JsonKey(name: "Date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "Cur_Abbreviation")
  String get curAbbreviation => throw _privateConstructorUsedError;
  @JsonKey(name: "Cur_Scale")
  int get curScale => throw _privateConstructorUsedError;
  @JsonKey(name: "Cur_Name")
  String get curName => throw _privateConstructorUsedError;
  @JsonKey(name: "Cur_OfficialRate")
  double get curOfficialRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyRateDtoCopyWith<CurrencyRateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyRateDtoCopyWith<$Res> {
  factory $CurrencyRateDtoCopyWith(
          CurrencyRateDto value, $Res Function(CurrencyRateDto) then) =
      _$CurrencyRateDtoCopyWithImpl<$Res, CurrencyRateDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "Cur_ID") int curId,
      @JsonKey(name: "Date") DateTime date,
      @JsonKey(name: "Cur_Abbreviation") String curAbbreviation,
      @JsonKey(name: "Cur_Scale") int curScale,
      @JsonKey(name: "Cur_Name") String curName,
      @JsonKey(name: "Cur_OfficialRate") double curOfficialRate});
}

/// @nodoc
class _$CurrencyRateDtoCopyWithImpl<$Res, $Val extends CurrencyRateDto>
    implements $CurrencyRateDtoCopyWith<$Res> {
  _$CurrencyRateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curId = null,
    Object? date = null,
    Object? curAbbreviation = null,
    Object? curScale = null,
    Object? curName = null,
    Object? curOfficialRate = null,
  }) {
    return _then(_value.copyWith(
      curId: null == curId
          ? _value.curId
          : curId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      curAbbreviation: null == curAbbreviation
          ? _value.curAbbreviation
          : curAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      curScale: null == curScale
          ? _value.curScale
          : curScale // ignore: cast_nullable_to_non_nullable
              as int,
      curName: null == curName
          ? _value.curName
          : curName // ignore: cast_nullable_to_non_nullable
              as String,
      curOfficialRate: null == curOfficialRate
          ? _value.curOfficialRate
          : curOfficialRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyRateDtoImplCopyWith<$Res>
    implements $CurrencyRateDtoCopyWith<$Res> {
  factory _$$CurrencyRateDtoImplCopyWith(_$CurrencyRateDtoImpl value,
          $Res Function(_$CurrencyRateDtoImpl) then) =
      __$$CurrencyRateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Cur_ID") int curId,
      @JsonKey(name: "Date") DateTime date,
      @JsonKey(name: "Cur_Abbreviation") String curAbbreviation,
      @JsonKey(name: "Cur_Scale") int curScale,
      @JsonKey(name: "Cur_Name") String curName,
      @JsonKey(name: "Cur_OfficialRate") double curOfficialRate});
}

/// @nodoc
class __$$CurrencyRateDtoImplCopyWithImpl<$Res>
    extends _$CurrencyRateDtoCopyWithImpl<$Res, _$CurrencyRateDtoImpl>
    implements _$$CurrencyRateDtoImplCopyWith<$Res> {
  __$$CurrencyRateDtoImplCopyWithImpl(
      _$CurrencyRateDtoImpl _value, $Res Function(_$CurrencyRateDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curId = null,
    Object? date = null,
    Object? curAbbreviation = null,
    Object? curScale = null,
    Object? curName = null,
    Object? curOfficialRate = null,
  }) {
    return _then(_$CurrencyRateDtoImpl(
      curId: null == curId
          ? _value.curId
          : curId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      curAbbreviation: null == curAbbreviation
          ? _value.curAbbreviation
          : curAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      curScale: null == curScale
          ? _value.curScale
          : curScale // ignore: cast_nullable_to_non_nullable
              as int,
      curName: null == curName
          ? _value.curName
          : curName // ignore: cast_nullable_to_non_nullable
              as String,
      curOfficialRate: null == curOfficialRate
          ? _value.curOfficialRate
          : curOfficialRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyRateDtoImpl implements _CurrencyRateDto {
  const _$CurrencyRateDtoImpl(
      {@JsonKey(name: "Cur_ID") required this.curId,
      @JsonKey(name: "Date") required this.date,
      @JsonKey(name: "Cur_Abbreviation") required this.curAbbreviation,
      @JsonKey(name: "Cur_Scale") required this.curScale,
      @JsonKey(name: "Cur_Name") required this.curName,
      @JsonKey(name: "Cur_OfficialRate") required this.curOfficialRate});

  factory _$CurrencyRateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyRateDtoImplFromJson(json);

  @override
  @JsonKey(name: "Cur_ID")
  final int curId;
  @override
  @JsonKey(name: "Date")
  final DateTime date;
  @override
  @JsonKey(name: "Cur_Abbreviation")
  final String curAbbreviation;
  @override
  @JsonKey(name: "Cur_Scale")
  final int curScale;
  @override
  @JsonKey(name: "Cur_Name")
  final String curName;
  @override
  @JsonKey(name: "Cur_OfficialRate")
  final double curOfficialRate;

  @override
  String toString() {
    return 'CurrencyRateDto(curId: $curId, date: $date, curAbbreviation: $curAbbreviation, curScale: $curScale, curName: $curName, curOfficialRate: $curOfficialRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyRateDtoImpl &&
            (identical(other.curId, curId) || other.curId == curId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.curAbbreviation, curAbbreviation) ||
                other.curAbbreviation == curAbbreviation) &&
            (identical(other.curScale, curScale) ||
                other.curScale == curScale) &&
            (identical(other.curName, curName) || other.curName == curName) &&
            (identical(other.curOfficialRate, curOfficialRate) ||
                other.curOfficialRate == curOfficialRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, curId, date, curAbbreviation,
      curScale, curName, curOfficialRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyRateDtoImplCopyWith<_$CurrencyRateDtoImpl> get copyWith =>
      __$$CurrencyRateDtoImplCopyWithImpl<_$CurrencyRateDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyRateDtoImplToJson(
      this,
    );
  }
}

abstract class _CurrencyRateDto implements CurrencyRateDto {
  const factory _CurrencyRateDto(
      {@JsonKey(name: "Cur_ID") required final int curId,
      @JsonKey(name: "Date") required final DateTime date,
      @JsonKey(name: "Cur_Abbreviation") required final String curAbbreviation,
      @JsonKey(name: "Cur_Scale") required final int curScale,
      @JsonKey(name: "Cur_Name") required final String curName,
      @JsonKey(name: "Cur_OfficialRate")
      required final double curOfficialRate}) = _$CurrencyRateDtoImpl;

  factory _CurrencyRateDto.fromJson(Map<String, dynamic> json) =
      _$CurrencyRateDtoImpl.fromJson;

  @override
  @JsonKey(name: "Cur_ID")
  int get curId;
  @override
  @JsonKey(name: "Date")
  DateTime get date;
  @override
  @JsonKey(name: "Cur_Abbreviation")
  String get curAbbreviation;
  @override
  @JsonKey(name: "Cur_Scale")
  int get curScale;
  @override
  @JsonKey(name: "Cur_Name")
  String get curName;
  @override
  @JsonKey(name: "Cur_OfficialRate")
  double get curOfficialRate;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyRateDtoImplCopyWith<_$CurrencyRateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
