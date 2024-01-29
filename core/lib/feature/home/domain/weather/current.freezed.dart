// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Weather {
  int? get dateEpoch => throw _privateConstructorUsedError;
  String? get dateDesc => throw _privateConstructorUsedError;
  double? get tempInCelcius => throw _privateConstructorUsedError;
  int? get conditionCode => throw _privateConstructorUsedError;
  String? get conditionDesc => throw _privateConstructorUsedError;
  double? get windKiloPerHour => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  double? get visibilityInKm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {int? dateEpoch,
      String? dateDesc,
      double? tempInCelcius,
      int? conditionCode,
      String? conditionDesc,
      double? windKiloPerHour,
      int? humidity,
      double? visibilityInKm});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateEpoch = freezed,
    Object? dateDesc = freezed,
    Object? tempInCelcius = freezed,
    Object? conditionCode = freezed,
    Object? conditionDesc = freezed,
    Object? windKiloPerHour = freezed,
    Object? humidity = freezed,
    Object? visibilityInKm = freezed,
  }) {
    return _then(_value.copyWith(
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      dateDesc: freezed == dateDesc
          ? _value.dateDesc
          : dateDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      tempInCelcius: freezed == tempInCelcius
          ? _value.tempInCelcius
          : tempInCelcius // ignore: cast_nullable_to_non_nullable
              as double?,
      conditionCode: freezed == conditionCode
          ? _value.conditionCode
          : conditionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      conditionDesc: freezed == conditionDesc
          ? _value.conditionDesc
          : conditionDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      windKiloPerHour: freezed == windKiloPerHour
          ? _value.windKiloPerHour
          : windKiloPerHour // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      visibilityInKm: freezed == visibilityInKm
          ? _value.visibilityInKm
          : visibilityInKm // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? dateEpoch,
      String? dateDesc,
      double? tempInCelcius,
      int? conditionCode,
      String? conditionDesc,
      double? windKiloPerHour,
      int? humidity,
      double? visibilityInKm});
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateEpoch = freezed,
    Object? dateDesc = freezed,
    Object? tempInCelcius = freezed,
    Object? conditionCode = freezed,
    Object? conditionDesc = freezed,
    Object? windKiloPerHour = freezed,
    Object? humidity = freezed,
    Object? visibilityInKm = freezed,
  }) {
    return _then(_$WeatherImpl(
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      dateDesc: freezed == dateDesc
          ? _value.dateDesc
          : dateDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      tempInCelcius: freezed == tempInCelcius
          ? _value.tempInCelcius
          : tempInCelcius // ignore: cast_nullable_to_non_nullable
              as double?,
      conditionCode: freezed == conditionCode
          ? _value.conditionCode
          : conditionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      conditionDesc: freezed == conditionDesc
          ? _value.conditionDesc
          : conditionDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      windKiloPerHour: freezed == windKiloPerHour
          ? _value.windKiloPerHour
          : windKiloPerHour // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      visibilityInKm: freezed == visibilityInKm
          ? _value.visibilityInKm
          : visibilityInKm // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$WeatherImpl extends _Weather {
  const _$WeatherImpl(
      {this.dateEpoch,
      this.dateDesc,
      this.tempInCelcius,
      this.conditionCode,
      this.conditionDesc,
      this.windKiloPerHour,
      this.humidity,
      this.visibilityInKm})
      : super._();

  @override
  final int? dateEpoch;
  @override
  final String? dateDesc;
  @override
  final double? tempInCelcius;
  @override
  final int? conditionCode;
  @override
  final String? conditionDesc;
  @override
  final double? windKiloPerHour;
  @override
  final int? humidity;
  @override
  final double? visibilityInKm;

  @override
  String toString() {
    return 'Weather(dateEpoch: $dateEpoch, dateDesc: $dateDesc, tempInCelcius: $tempInCelcius, conditionCode: $conditionCode, conditionDesc: $conditionDesc, windKiloPerHour: $windKiloPerHour, humidity: $humidity, visibilityInKm: $visibilityInKm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.dateEpoch, dateEpoch) ||
                other.dateEpoch == dateEpoch) &&
            (identical(other.dateDesc, dateDesc) ||
                other.dateDesc == dateDesc) &&
            (identical(other.tempInCelcius, tempInCelcius) ||
                other.tempInCelcius == tempInCelcius) &&
            (identical(other.conditionCode, conditionCode) ||
                other.conditionCode == conditionCode) &&
            (identical(other.conditionDesc, conditionDesc) ||
                other.conditionDesc == conditionDesc) &&
            (identical(other.windKiloPerHour, windKiloPerHour) ||
                other.windKiloPerHour == windKiloPerHour) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.visibilityInKm, visibilityInKm) ||
                other.visibilityInKm == visibilityInKm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateEpoch,
      dateDesc,
      tempInCelcius,
      conditionCode,
      conditionDesc,
      windKiloPerHour,
      humidity,
      visibilityInKm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);
}

abstract class _Weather extends Weather {
  const factory _Weather(
      {final int? dateEpoch,
      final String? dateDesc,
      final double? tempInCelcius,
      final int? conditionCode,
      final String? conditionDesc,
      final double? windKiloPerHour,
      final int? humidity,
      final double? visibilityInKm}) = _$WeatherImpl;
  const _Weather._() : super._();

  @override
  int? get dateEpoch;
  @override
  String? get dateDesc;
  @override
  double? get tempInCelcius;
  @override
  int? get conditionCode;
  @override
  String? get conditionDesc;
  @override
  double? get windKiloPerHour;
  @override
  int? get humidity;
  @override
  double? get visibilityInKm;
  @override
  @JsonKey(ignore: true)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
