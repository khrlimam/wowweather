import 'package:core/feature/home/repo/weather.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart_ext/single.dart';

import '../domain/home.dart';

@singleton
class GetWeatherForecastWithAirQualityUseCase {
  final WeatherRepository _weatherRepository;

  GetWeatherForecastWithAirQualityUseCase(this._weatherRepository);

  Single<WeatherHome> call(String location) {
    return _weatherRepository.getWeatherForecastWithAirQuality(location);
  }
}
