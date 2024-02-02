import 'package:core/feature/home/domain/home.dart';
import 'package:core/feature/home/domain/weather/current.dart';
import 'package:core/feature/home/domain/weather/forecast.dart';
import 'package:wow_weather/callback/default.dart';

mixin HomeViewModel {
  WeatherHome? get weatherHome;

  List<ForecastWeather> get weeklyForecasts;

  List<Weather> get hourlyForecasts;

  void setUiStateCallback(DefaultUiStateCallback callback);

  void searchWeather(String location);

  void init();

  void dispose();
}
