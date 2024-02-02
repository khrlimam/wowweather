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
  Location? get location => throw _privateConstructorUsedError;
  Weather? get currentWeather => throw _privateConstructorUsedError;
  List<Weather> get hourlyForecasts => throw _privateConstructorUsedError;
  List<ForecastWeather> get weeklyForecasts =>
      throw _privateConstructorUsedError;

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
      {Location? location,
      Weather? currentWeather,
      List<Weather> hourlyForecasts,
      List<ForecastWeather> weeklyForecasts});

  $LocationCopyWith<$Res>? get location;
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
    Object? location = freezed,
    Object? currentWeather = freezed,
    Object? hourlyForecasts = null,
    Object? weeklyForecasts = null,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      hourlyForecasts: null == hourlyForecasts
          ? _value.hourlyForecasts
          : hourlyForecasts // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      weeklyForecasts: null == weeklyForecasts
          ? _value.weeklyForecasts
          : weeklyForecasts // ignore: cast_nullable_to_non_nullable
              as List<ForecastWeather>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
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
      {Location? location,
      Weather? currentWeather,
      List<Weather> hourlyForecasts,
      List<ForecastWeather> weeklyForecasts});

  @override
  $LocationCopyWith<$Res>? get location;
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
    Object? location = freezed,
    Object? currentWeather = freezed,
    Object? hourlyForecasts = null,
    Object? weeklyForecasts = null,
  }) {
    return _then(_$WeatherHomeImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      hourlyForecasts: null == hourlyForecasts
          ? _value._hourlyForecasts
          : hourlyForecasts // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      weeklyForecasts: null == weeklyForecasts
          ? _value._weeklyForecasts
          : weeklyForecasts // ignore: cast_nullable_to_non_nullable
              as List<ForecastWeather>,
    ));
  }
}

/// @nodoc

class _$WeatherHomeImpl implements _WeatherHome {
  const _$WeatherHomeImpl(
      {this.location,
      this.currentWeather,
      final List<Weather> hourlyForecasts = const [],
      final List<ForecastWeather> weeklyForecasts = const []})
      : _hourlyForecasts = hourlyForecasts,
        _weeklyForecasts = weeklyForecasts;

  @override
  final Location? location;
  @override
  final Weather? currentWeather;
  final List<Weather> _hourlyForecasts;
  @override
  @JsonKey()
  List<Weather> get hourlyForecasts {
    if (_hourlyForecasts is EqualUnmodifiableListView) return _hourlyForecasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourlyForecasts);
  }

  final List<ForecastWeather> _weeklyForecasts;
  @override
  @JsonKey()
  List<ForecastWeather> get weeklyForecasts {
    if (_weeklyForecasts is EqualUnmodifiableListView) return _weeklyForecasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyForecasts);
  }

  @override
  String toString() {
    return 'WeatherHome(location: $location, currentWeather: $currentWeather, hourlyForecasts: $hourlyForecasts, weeklyForecasts: $weeklyForecasts)';
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
                .equals(other._hourlyForecasts, _hourlyForecasts) &&
            const DeepCollectionEquality()
                .equals(other._weeklyForecasts, _weeklyForecasts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      currentWeather,
      const DeepCollectionEquality().hash(_hourlyForecasts),
      const DeepCollectionEquality().hash(_weeklyForecasts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherHomeImplCopyWith<_$WeatherHomeImpl> get copyWith =>
      __$$WeatherHomeImplCopyWithImpl<_$WeatherHomeImpl>(this, _$identity);
}

abstract class _WeatherHome implements WeatherHome {
  const factory _WeatherHome(
      {final Location? location,
      final Weather? currentWeather,
      final List<Weather> hourlyForecasts,
      final List<ForecastWeather> weeklyForecasts}) = _$WeatherHomeImpl;

  @override
  Location? get location;
  @override
  Weather? get currentWeather;
  @override
  List<Weather> get hourlyForecasts;
  @override
  List<ForecastWeather> get weeklyForecasts;
  @override
  @JsonKey(ignore: true)
  _$$WeatherHomeImplCopyWith<_$WeatherHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
