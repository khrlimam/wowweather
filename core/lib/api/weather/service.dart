import 'package:core/api/weather/response.dart';
import 'package:core/http/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart_ext/single.dart';

@singleton
class WeatherApiService {
  Single<WeatherResponse> _getWeatherForecastBase(String location,
      {int daysForecast = 7, Map<String, dynamic>? params}) {
    Map<String, dynamic> query = {
      "alerts": "no",
      "q": location,
      "days": daysForecast
    };
    if (params != null) query.addAll(params);
    return Single<WeatherResponse>.fromFuture(ApiClient.init()
        .get("forecast.json", queryParams: query)
        .then((value) => WeatherResponse.fromJson(value)));
  }

  Single<WeatherResponse> getWeatherForecastWithAirQuality(String location) {
    return _getWeatherForecastBase(location, params: {"aqi": "yes"});
  }

  Single<WeatherResponse> getWeatherForecast(String location) {
    return _getWeatherForecastBase(location, params: {"aqi": "no"});
  }
}
