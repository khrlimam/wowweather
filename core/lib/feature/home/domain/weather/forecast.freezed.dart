// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForecastWeather {
  Weather? get day => throw _privateConstructorUsedError;
  List<Weather>? get hour => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastWeatherCopyWith<ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherCopyWith<$Res> {
  factory $ForecastWeatherCopyWith(
          ForecastWeather value, $Res Function(ForecastWeather) then) =
      _$ForecastWeatherCopyWithImpl<$Res, ForecastWeather>;
  @useResult
  $Res call({Weather? day, List<Weather>? hour});

  $WeatherCopyWith<$Res>? get day;
}

/// @nodoc
class _$ForecastWeatherCopyWithImpl<$Res, $Val extends ForecastWeather>
    implements $ForecastWeatherCopyWith<$Res> {
  _$ForecastWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? hour = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Weather?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get day {
    if (_value.day == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.day!, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastWeatherImplCopyWith<$Res>
    implements $ForecastWeatherCopyWith<$Res> {
  factory _$$ForecastWeatherImplCopyWith(_$ForecastWeatherImpl value,
          $Res Function(_$ForecastWeatherImpl) then) =
      __$$ForecastWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Weather? day, List<Weather>? hour});

  @override
  $WeatherCopyWith<$Res>? get day;
}

/// @nodoc
class __$$ForecastWeatherImplCopyWithImpl<$Res>
    extends _$ForecastWeatherCopyWithImpl<$Res, _$ForecastWeatherImpl>
    implements _$$ForecastWeatherImplCopyWith<$Res> {
  __$$ForecastWeatherImplCopyWithImpl(
      _$ForecastWeatherImpl _value, $Res Function(_$ForecastWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? hour = freezed,
  }) {
    return _then(_$ForecastWeatherImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Weather?,
      hour: freezed == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ));
  }
}

/// @nodoc

class _$ForecastWeatherImpl implements _ForecastWeather {
  const _$ForecastWeatherImpl({this.day, final List<Weather>? hour})
      : _hour = hour;

  @override
  final Weather? day;
  final List<Weather>? _hour;
  @override
  List<Weather>? get hour {
    final value = _hour;
    if (value == null) return null;
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ForecastWeather(day: $day, hour: $hour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherImpl &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._hour, _hour));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, day, const DeepCollectionEquality().hash(_hour));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWeatherImplCopyWith<_$ForecastWeatherImpl> get copyWith =>
      __$$ForecastWeatherImplCopyWithImpl<_$ForecastWeatherImpl>(
          this, _$identity);
}

abstract class _ForecastWeather implements ForecastWeather {
  const factory _ForecastWeather(
      {final Weather? day, final List<Weather>? hour}) = _$ForecastWeatherImpl;

  @override
  Weather? get day;
  @override
  List<Weather>? get hour;
  @override
  @JsonKey(ignore: true)
  _$$ForecastWeatherImplCopyWith<_$ForecastWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
