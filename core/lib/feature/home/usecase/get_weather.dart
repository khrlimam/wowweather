import 'package:core/feature/home/repo/weather.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart_ext/single.dart';

import '../domain/home.dart';

@singleton
class GetWeatherForecastUseCase {
  final WeatherRepository _repository;

  GetWeatherForecastUseCase(this._repository);

  Single<WeatherHome> call(String location) {
    return _repository.getWeatherForecast(location);
  }
}
