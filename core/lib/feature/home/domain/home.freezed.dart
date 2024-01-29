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
mixin _$Home {
  Location get location => throw _privateConstructorUsedError;
  Weather? get currentWeather => throw _privateConstructorUsedError;
  List<Weather>? get forecastHours => throw _privateConstructorUsedError;
  List<ForecastWeather>? get forecasts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res, Home>;
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
class _$HomeCopyWithImpl<$Res, $Val extends Home>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeImplCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$HomeImplCopyWith(
          _$HomeImpl value, $Res Function(_$HomeImpl) then) =
      __$$HomeImplCopyWithImpl<$Res>;
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
class __$$HomeImplCopyWithImpl<$Res>
    extends _$HomeCopyWithImpl<$Res, _$HomeImpl>
    implements _$$HomeImplCopyWith<$Res> {
  __$$HomeImplCopyWithImpl(_$HomeImpl _value, $Res Function(_$HomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? currentWeather = freezed,
    Object? forecastHours = freezed,
    Object? forecasts = freezed,
  }) {
    return _then(_$HomeImpl(
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

class _$HomeImpl implements _Home {
  const _$HomeImpl(
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
    return 'Home(location: $location, currentWeather: $currentWeather, forecastHours: $forecastHours, forecasts: $forecasts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeImpl &&
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
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      __$$HomeImplCopyWithImpl<_$HomeImpl>(this, _$identity);
}

abstract class _Home implements Home {
  const factory _Home(
      {required final Location location,
      final Weather? currentWeather,
      final List<Weather>? forecastHours,
      final List<ForecastWeather>? forecasts}) = _$HomeImpl;

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
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
