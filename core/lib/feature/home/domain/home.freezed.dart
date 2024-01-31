// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherHome {
  Location get location => throw _privateConstructorUsedError;
  Weather? get currentWeather => throw _privateConstructorUsedError;
  List<Weather>? get forecastHours => throw _privateConstructorUsedError;
  List<ForecastWeather>? get forecasts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherHomeCopyWith<WeatherHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherHomeCopyWith<$Res> {
  factory $WeatherHomeCopyWith(
          WeatherHome value, $Res Function(WeatherHome) then) =
      _$WeatherHomeCopyWithImpl<$Res, WeatherHome>;
  @useResult
  $Res call(
      {Location location,
      Weather? currentWeather,
      List<Weather>? forecastHours,
      List<ForecastWeather>? forecasts});

  $LocationCopyWith<$Res> get location;
  $WeatherCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class _$WeatherHomeCopyWithImpl<$Res, $Val extends WeatherHome>
    implements $WeatherHomeCopyWith<$Res> {
  _$WeatherHomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? currentWeather = freezed,
    Object? forecastHours = freezed,
    Object? forecasts = freezed,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      forecastHours: freezed == forecastHours
          ? _value.forecastHours
          : forecastHours // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      forecasts: freezed == forecasts
          ? _value.forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as List<ForecastWeather>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get currentWeather {
    if (_value.currentWeather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.currentWeather!, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherHomeImplCopyWith<$Res>
    implements $WeatherHomeCopyWith<$Res> {
  factory _$$WeatherHomeImplCopyWith(
          _$WeatherHomeImpl value, $Res Function(_$WeatherHomeImpl) then) =
      __$$WeatherHomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Location location,
      Weather? currentWeather,
      List<Weather>? forecastHours,
      List<ForecastWeather>? forecasts});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $WeatherCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class __$$WeatherHomeImplCopyWithImpl<$Res>
    extends _$WeatherHomeCopyWithImpl<$Res, _$WeatherHomeImpl>
    implements _$$WeatherHomeImplCopyWith<$Res> {
  __$$WeatherHomeImplCopyWithImpl(
      _$WeatherHomeImpl _value, $Res Function(_$WeatherHomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? currentWeather = freezed,
    Object? forecastHours = freezed,
    Object? forecasts = freezed,
  }) {
    return _then(_$WeatherHomeImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      forecastHours: freezed == forecastHours
          ? _value._forecastHours
          : forecastHours // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      forecasts: freezed == forecasts
          ? _value._forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as List<ForecastWeather>?,
    ));
  }
}

/// @nodoc

class _$WeatherHomeImpl implements _WeatherHome {
  const _$WeatherHomeImpl(
      {required this.location,
      this.currentWeather,
      final List<Weather>? forecastHours,
      final List<ForecastWeather>? forecasts})
      : _forecastHours = forecastHours,
        _forecasts = forecasts;

  @override
  final Location location;
  @override
  final Weather? currentWeather;
  final List<Weather>? _forecastHours;
  @override
  List<Weather>? get forecastHours {
    final value = _forecastHours;
    if (value == null) return null;
    if (_forecastHours is EqualUnmodifiableListView) return _forecastHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ForecastWeather>? _forecasts;
  @override
  List<ForecastWeather>? get forecasts {
    final value = _forecasts;
    if (value == null) return null;
    if (_forecasts is EqualUnmodifiableListView) return _forecasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeatherHome(location: $location, currentWeather: $currentWeather, forecastHours: $forecastHours, forecasts: $forecasts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherHomeImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            const DeepCollectionEquality()
                .equals(other._forecastHours, _forecastHours) &&
            const DeepCollectionEquality()
                .equals(other._forecasts, _forecasts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      currentWeather,
      const DeepCollectionEquality().hash(_forecastHours),
      const DeepCollectionEquality().hash(_forecasts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherHomeImplCopyWith<_$WeatherHomeImpl> get copyWith =>
      __$$WeatherHomeImplCopyWithImpl<_$WeatherHomeImpl>(this, _$identity);
}

abstract class _WeatherHome implements WeatherHome {
  const factory _WeatherHome(
      {required final Location location,
      final Weather? currentWeather,
      final List<Weather>? forecastHours,
      final List<ForecastWeather>? forecasts}) = _$WeatherHomeImpl;

  @override
  Location get location;
  @override
  Weather? get currentWeather;
  @override
  List<Weather>? get forecastHours;
  @override
  List<ForecastWeather>? get forecasts;
  @override
  @JsonKey(ignore: true)
  _$$WeatherHomeImplCopyWith<_$WeatherHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
