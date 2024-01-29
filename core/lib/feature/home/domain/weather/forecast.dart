import 'package:core/feature/home/domain/weather/current.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast.freezed.dart';

@freezed
@immutable
class ForecastWeather with _$ForecastWeather {
  const factory ForecastWeather({
    Weather? day,
    List<Weather>? hour,
  }) = _ForecastWeather;
}
