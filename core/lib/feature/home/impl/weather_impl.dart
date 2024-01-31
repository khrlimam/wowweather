import 'package:core/api/weather/service.dart';
import 'package:core/feature/home/domain/home.dart';
import 'package:core/feature/home/repo/weather.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart_ext/src/single/single.dart';

@Singleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiService _apiService;

  WeatherRepositoryImpl(this._apiService);

  @override
  Single<WeatherHome> getWeatherForecast(String location) {
    return _apiService
        .getWeatherForecast(location)
        .map((event) => WeatherHome.fromResponse(event));
  }

  @override
  Single<WeatherHome> getWeatherForecastWithAirQuality(String location) {
    return _apiService
        .getWeatherForecastWithAirQuality(location)
        .map((event) => WeatherHome.fromResponse(event));
  }
}
