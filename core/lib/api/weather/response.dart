import 'package:json_annotation/json_annotation.dart';

part "response.g.dart";

@JsonSerializable()
class WeatherResponse {
  @JsonKey(name: "location")
  LocationResponse location;
  @JsonKey(name: "current")
  CurrentResponse current;
  @JsonKey(name: "forecast")
  ForecastResponse forecast;

  WeatherResponse({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}

@JsonSerializable()
class CurrentResponse {
  @JsonKey(name: "last_updated_epoch")
  int lastUpdatedEpoch;
  @JsonKey(name: "last_updated")
  String lastUpdated;
  @JsonKey(name: "temp_c")
  double tempC;
  @JsonKey(name: "temp_f")
  int tempF;
  @JsonKey(name: "is_day")
  int isDay;
  @JsonKey(name: "condition")
  Condition condition;
  @JsonKey(name: "wind_mph")
  double windMph;
  @JsonKey(name: "wind_kph")
  double windKph;
  @JsonKey(name: "wind_degree")
  int windDegree;
  @JsonKey(name: "wind_dir")
  String windDir;
  @JsonKey(name: "pressure_mb")
  int pressureMb;
  @JsonKey(name: "pressure_in")
  double pressureIn;
  @JsonKey(name: "precip_mm")
  double precipMm;
  @JsonKey(name: "precip_in")
  double precipIn;
  @JsonKey(name: "humidity")
  int humidity;
  @JsonKey(name: "cloud")
  int cloud;
  @JsonKey(name: "feelslike_c")
  int feelslikeC;
  @JsonKey(name: "feelslike_f")
  double feelslikeF;
  @JsonKey(name: "vis_km")
  double visKm;
  @JsonKey(name: "vis_miles")
  int visMiles;
  @JsonKey(name: "uv")
  int uv;
  @JsonKey(name: "gust_mph")
  double gustMph;
  @JsonKey(name: "gust_kph")
  double gustKph;
  @JsonKey(name: "air_quality")
  Map<String, double> airQuality;

  CurrentResponse({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.visKm,
    required this.visMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph,
    required this.airQuality,
  });

  factory CurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentResponseToJson(this);
}

@JsonSerializable()
class Condition {
  @JsonKey(name: "text")
  String text;
  @JsonKey(name: "icon")
  String icon;
  @JsonKey(name: "code")
  int code;

  Condition({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable()
class ForecastResponse {
  @JsonKey(name: "forecastday")
  List<ForecastDay> forecastDay;

  ForecastResponse({
    required this.forecastDay,
  });

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastResponseToJson(this);
}

@JsonSerializable()
class ForecastDay {
  @JsonKey(name: "date")
  DateTime date;
  @JsonKey(name: "date_epoch")
  int dateEpoch;
  @JsonKey(name: "day")
  Day day;
  @JsonKey(name: "hour")
  List<Hour> hour;

  ForecastDay({
    required this.date,
    required this.dateEpoch,
    required this.day,
    required this.hour,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayToJson(this);
}

@JsonSerializable()
class Day {
  @JsonKey(name: "maxtemp_c")
  double maxtempC;
  @JsonKey(name: "maxtemp_f")
  double maxtempF;
  @JsonKey(name: "mintemp_c")
  double mintempC;
  @JsonKey(name: "mintemp_f")
  double mintempF;
  @JsonKey(name: "avgtemp_c")
  double avgtempC;
  @JsonKey(name: "avgtemp_f")
  double avgtempF;
  @JsonKey(name: "maxwind_mph")
  double maxwindMph;
  @JsonKey(name: "maxwind_kph")
  int maxwindKph;
  @JsonKey(name: "totalprecip_mm")
  double totalprecipMm;
  @JsonKey(name: "totalprecip_in")
  double totalprecipIn;
  @JsonKey(name: "totalsnow_cm")
  int totalsnowCm;
  @JsonKey(name: "avgvis_km")
  double avgvisKm;
  @JsonKey(name: "avgvis_miles")
  int avgvisMiles;
  @JsonKey(name: "avghumidity")
  int avghumidity;
  @JsonKey(name: "daily_will_it_rain")
  int dailyWillItRain;
  @JsonKey(name: "daily_chance_of_rain")
  int dailyChanceOfRain;
  @JsonKey(name: "daily_will_it_snow")
  int dailyWillItSnow;
  @JsonKey(name: "daily_chance_of_snow")
  int dailyChanceOfSnow;
  @JsonKey(name: "condition")
  Condition condition;
  @JsonKey(name: "uv")
  int uv;
  @JsonKey(name: "air_quality")
  Map<String, double> airQuality;

  Day({
    required this.maxtempC,
    required this.maxtempF,
    required this.mintempC,
    required this.mintempF,
    required this.avgtempC,
    required this.avgtempF,
    required this.maxwindMph,
    required this.maxwindKph,
    required this.totalprecipMm,
    required this.totalprecipIn,
    required this.totalsnowCm,
    required this.avgvisKm,
    required this.avgvisMiles,
    required this.avghumidity,
    required this.dailyWillItRain,
    required this.dailyChanceOfRain,
    required this.dailyWillItSnow,
    required this.dailyChanceOfSnow,
    required this.condition,
    required this.uv,
    required this.airQuality,
  });

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);
}

@JsonSerializable()
class Hour {
  @JsonKey(name: "time_epoch")
  int timeEpoch;
  @JsonKey(name: "time")
  String time;
  @JsonKey(name: "temp_c")
  double tempC;
  @JsonKey(name: "temp_f")
  double tempF;
  @JsonKey(name: "is_day")
  int isDay;
  @JsonKey(name: "condition")
  Condition condition;
  @JsonKey(name: "wind_mph")
  double windMph;
  @JsonKey(name: "wind_kph")
  double windKph;
  @JsonKey(name: "wind_degree")
  int windDegree;
  @JsonKey(name: "wind_dir")
  String windDir;
  @JsonKey(name: "pressure_mb")
  int pressureMb;
  @JsonKey(name: "pressure_in")
  double pressureIn;
  @JsonKey(name: "precip_mm")
  double precipMm;
  @JsonKey(name: "precip_in")
  double precipIn;
  @JsonKey(name: "snow_cm")
  int snowCm;
  @JsonKey(name: "humidity")
  int humidity;
  @JsonKey(name: "cloud")
  int cloud;
  @JsonKey(name: "feelslike_c")
  double feelslikeC;
  @JsonKey(name: "feelslike_f")
  double feelslikeF;
  @JsonKey(name: "windchill_c")
  double windchillC;
  @JsonKey(name: "windchill_f")
  double windchillF;
  @JsonKey(name: "heatindex_c")
  double heatindexC;
  @JsonKey(name: "heatindex_f")
  double heatindexF;
  @JsonKey(name: "dewpoint_c")
  double dewpointC;
  @JsonKey(name: "dewpoint_f")
  double dewpointF;
  @JsonKey(name: "will_it_rain")
  int willItRain;
  @JsonKey(name: "chance_of_rain")
  int chanceOfRain;
  @JsonKey(name: "will_it_snow")
  int willItSnow;
  @JsonKey(name: "chance_of_snow")
  int chanceOfSnow;
  @JsonKey(name: "vis_km")
  double visKm;
  @JsonKey(name: "vis_miles")
  int visMiles;
  @JsonKey(name: "gust_mph")
  double gustMph;
  @JsonKey(name: "gust_kph")
  double gustKph;
  @JsonKey(name: "uv")
  int uv;
  @JsonKey(name: "air_quality")
  Map<String, double> airQuality;
  @JsonKey(name: "short_rad")
  int shortRad;
  @JsonKey(name: "diff_rad")
  int diffRad;

  Hour({
    required this.timeEpoch,
    required this.time,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.snowCm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.windchillC,
    required this.windchillF,
    required this.heatindexC,
    required this.heatindexF,
    required this.dewpointC,
    required this.dewpointF,
    required this.willItRain,
    required this.chanceOfRain,
    required this.willItSnow,
    required this.chanceOfSnow,
    required this.visKm,
    required this.visMiles,
    required this.gustMph,
    required this.gustKph,
    required this.uv,
    required this.airQuality,
    required this.shortRad,
    required this.diffRad,
  });

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);

  Map<String, dynamic> toJson() => _$HourToJson(this);
}

@JsonSerializable()
class LocationResponse {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "region")
  String region;
  @JsonKey(name: "country")
  String country;
  @JsonKey(name: "lat")
  double lat;
  @JsonKey(name: "lon")
  double lon;
  @JsonKey(name: "tz_id")
  String tzId;
  @JsonKey(name: "localtime_epoch")
  int localtimeEpoch;
  @JsonKey(name: "localtime")
  String localtime;

  LocationResponse({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}
