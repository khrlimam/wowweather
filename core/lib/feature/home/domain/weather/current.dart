import 'package:core/api/weather/response.dart';
import 'package:core/feature/home/domain/weather/condition.dart';
import 'package:core/util/exts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../const/const.dart';

part "current.freezed.dart";

@freezed
@immutable
class Weather with _$Weather {
  const factory Weather({
    int? dateEpoch,
    String? dateDesc,
    double? tempInCelcius,
    int? conditionCode,
    String? conditionDesc,
    double? windKiloPerHour,
    int? humidity,
    double? visibilityInKm,
  }) = _Weather;

  const Weather._();

  String get simpleDesc => '$humidity';

  WeatherCondition get weatherCondition =>
      codeToWeatherCondition[conditionCode] ?? WeatherCondition.na;

  DateTime get date => DateTime.parse(dateDesc ?? "");

  String get dateSimpleFormat =>
      date.format(kDefaultSimpleDateFormat);

  String get dateDefaultFormat => date.format(kDefaultDateFormat);

  factory Weather.fromCurrentWeather(CurrentResponse weather) => Weather(
        dateEpoch: weather.lastUpdatedEpoch,
        dateDesc: weather.lastUpdated,
        tempInCelcius: weather.tempC,
        conditionCode: weather.condition.code,
        conditionDesc: weather.condition.text,
        windKiloPerHour: weather.windKph,
        humidity: weather.humidity,
        visibilityInKm: weather.visKm,
      );

  factory Weather.fromForecastDay(ForecastDay weather) => Weather(
        dateEpoch: weather.dateEpoch,
        dateDesc: weather.date,
        tempInCelcius: weather.day.avgtempC,
        conditionCode: weather.day.condition.code,
        conditionDesc: weather.day.condition.text,
        windKiloPerHour: weather.day.maxwindKph.toDouble(),
        humidity: weather.day.avghumidity,
        visibilityInKm: weather.day.avgvisKm,
      );

  factory Weather.fromForecastHour(Hour weather) => Weather(
        dateEpoch: weather.timeEpoch,
        dateDesc: weather.time,
        tempInCelcius: weather.tempC,
        conditionCode: weather.condition.code,
        conditionDesc: weather.condition.text,
        windKiloPerHour: weather.windKph,
        humidity: weather.humidity,
        visibilityInKm: weather.visKm,
      );
}
