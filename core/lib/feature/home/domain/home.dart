import 'package:core/api/weather/response.dart';
import 'package:core/feature/home/domain/location.dart';
import 'package:core/feature/home/domain/weather/current.dart';
import 'package:core/feature/home/domain/weather/forecast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';

@freezed
@immutable
class Home with _$Home {
  const factory Home({
    required Location location,
    Weather? currentWeather,
    List<Weather>? forecastHours,
    List<ForecastWeather>? forecasts,
  }) = _Home;

  factory Home.fromResponse(WeatherResponse weather) =>
      Home(location: Location.fromResponse(weather.location));
}
