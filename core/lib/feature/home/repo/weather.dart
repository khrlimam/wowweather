import 'package:rxdart_ext/single.dart';

import '../domain/home.dart';

mixin WeatherRepository {
  Single<WeatherHome> getWeatherForecast(String location);

  Single<WeatherHome> getWeatherForecastWithAirQuality(String location);
}
