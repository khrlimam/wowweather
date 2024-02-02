import 'package:core/api/weather/response.dart';
import 'package:core/feature/home/domain/location.dart';
import 'package:core/feature/home/domain/weather/current.dart';
import 'package:core/feature/home/domain/weather/forecast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';

@freezed
@immutable
class WeatherHome with _$WeatherHome {
  const factory WeatherHome({
    Location? location,
    Weather? currentWeather,
    @Default([]) List<Weather> hourlyForecasts,
    @Default([]) List<ForecastWeather> weeklyForecasts,
  }) = _WeatherHome;

  factory WeatherHome.fromResponse(WeatherResponse weather) => WeatherHome(
      location: Location.fromResponse(weather.location),
      currentWeather: Weather.fromCurrentWeather(weather.current),
      //assume the first forecast is today's date
      hourlyForecasts: weather.forecast.forecastDay.first.hour
          .map((hourly) => Weather.fromForecastHour(hourly))
          .toList(),
      weeklyForecasts: weather.forecast.forecastDay
          .map((day) => ForecastWeather(
              day: Weather.fromForecastDay(day),
              hour: day.hour
                  .map((hourly) => Weather.fromForecastHour(hourly))
                  .toList()))
          .toList());
}
