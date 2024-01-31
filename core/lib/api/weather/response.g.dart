// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      location:
          LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      current:
          CurrentResponse.fromJson(json['current'] as Map<String, dynamic>),
      forecast:
          ForecastResponse.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };

CurrentResponse _$CurrentResponseFromJson(Map<String, dynamic> json) =>
    CurrentResponse(
      lastUpdatedEpoch: json['last_updated_epoch'] as int,
      lastUpdated: json['last_updated'] as String,
      tempC: (json['temp_c'] as num).toDouble(),
      tempF: (json['temp_f'] as num).toDouble(),
      isDay: parseIntToBool(json['is_day'] as int),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windMph: (json['wind_mph'] as num).toDouble(),
      windKph: (json['wind_kph'] as num).toDouble(),
      windDegree: json['wind_degree'] as int,
      windDir: json['wind_dir'] as String,
      pressureMb: (json['pressure_mb'] as num).toDouble(),
      pressureIn: (json['pressure_in'] as num).toDouble(),
      precipMm: (json['precip_mm'] as num).toDouble(),
      precipIn: (json['precip_in'] as num).toDouble(),
      humidity: json['humidity'] as int,
      cloud: (json['cloud'] as num).toDouble(),
      feelslikeC: (json['feelslike_c'] as num).toDouble(),
      feelslikeF: (json['feelslike_f'] as num).toDouble(),
      visKm: (json['vis_km'] as num).toDouble(),
      visMiles: (json['vis_miles'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
      gustMph: (json['gust_mph'] as num).toDouble(),
      gustKph: (json['gust_kph'] as num).toDouble(),
      airQuality: (json['air_quality'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$CurrentResponseToJson(CurrentResponse instance) =>
    <String, dynamic>{
      'last_updated_epoch': instance.lastUpdatedEpoch,
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'wind_mph': instance.windMph,
      'wind_kph': instance.windKph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'pressure_in': instance.pressureIn,
      'precip_mm': instance.precipMm,
      'precip_in': instance.precipIn,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslikeC,
      'feelslike_f': instance.feelslikeF,
      'vis_km': instance.visKm,
      'vis_miles': instance.visMiles,
      'uv': instance.uv,
      'gust_mph': instance.gustMph,
      'gust_kph': instance.gustKph,
      'air_quality': instance.airQuality,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
      text: json['text'] as String,
      icon: json['icon'] as String,
      code: json['code'] as int,
    );

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) =>
    ForecastResponse(
      forecastDay: (json['forecastday'] as List<dynamic>)
          .map((e) => ForecastDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastResponseToJson(ForecastResponse instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastDay,
    };

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) => ForecastDay(
      date: DateTime.parse(json['date'] as String),
      dateEpoch: json['date_epoch'] as int,
      day: Day.fromJson(json['day'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>)
          .map((e) => Hour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastDayToJson(ForecastDay instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'date_epoch': instance.dateEpoch,
      'day': instance.day,
      'hour': instance.hour,
    };

Day _$DayFromJson(Map<String, dynamic> json) => Day(
      maxtempC: (json['maxtemp_c'] as num).toDouble(),
      maxtempF: (json['maxtemp_f'] as num).toDouble(),
      mintempC: (json['mintemp_c'] as num).toDouble(),
      mintempF: (json['mintemp_f'] as num).toDouble(),
      avgtempC: (json['avgtemp_c'] as num).toDouble(),
      avgtempF: (json['avgtemp_f'] as num).toDouble(),
      maxwindMph: (json['maxwind_mph'] as num).toDouble(),
      maxwindKph: (json['maxwind_kph'] as num).toDouble(),
      totalprecipMm: (json['totalprecip_mm'] as num).toDouble(),
      totalprecipIn: (json['totalprecip_in'] as num).toDouble(),
      totalsnowCm: (json['totalsnow_cm'] as num).toDouble(),
      avgvisKm: (json['avgvis_km'] as num).toDouble(),
      avgvisMiles: (json['avgvis_miles'] as num).toDouble(),
      avghumidity: json['avghumidity'] as int,
      dailyWillItRain: parseIntToBool(json['daily_will_it_rain'] as int),
      dailyChanceOfRain: json['daily_chance_of_rain'] as int,
      dailyWillItSnow: parseIntToBool(json['daily_will_it_snow'] as int),
      dailyChanceOfSnow: json['daily_chance_of_snow'] as int,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      uv: (json['uv'] as num).toDouble(),
      airQuality: (json['air_quality'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtempC,
      'maxtemp_f': instance.maxtempF,
      'mintemp_c': instance.mintempC,
      'mintemp_f': instance.mintempF,
      'avgtemp_c': instance.avgtempC,
      'avgtemp_f': instance.avgtempF,
      'maxwind_mph': instance.maxwindMph,
      'maxwind_kph': instance.maxwindKph,
      'totalprecip_mm': instance.totalprecipMm,
      'totalprecip_in': instance.totalprecipIn,
      'totalsnow_cm': instance.totalsnowCm,
      'avgvis_km': instance.avgvisKm,
      'avgvis_miles': instance.avgvisMiles,
      'avghumidity': instance.avghumidity,
      'daily_will_it_rain': instance.dailyWillItRain,
      'daily_chance_of_rain': instance.dailyChanceOfRain,
      'daily_will_it_snow': instance.dailyWillItSnow,
      'daily_chance_of_snow': instance.dailyChanceOfSnow,
      'condition': instance.condition,
      'uv': instance.uv,
      'air_quality': instance.airQuality,
    };

Hour _$HourFromJson(Map<String, dynamic> json) => Hour(
      timeEpoch: json['time_epoch'] as int,
      time: json['time'] as String,
      tempC: (json['temp_c'] as num).toDouble(),
      tempF: (json['temp_f'] as num).toDouble(),
      isDay: json['is_day'] as int,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windMph: (json['wind_mph'] as num).toDouble(),
      windKph: (json['wind_kph'] as num).toDouble(),
      windDegree: json['wind_degree'] as int,
      windDir: json['wind_dir'] as String,
      pressureMb: (json['pressure_mb'] as num).toDouble(),
      pressureIn: (json['pressure_in'] as num).toDouble(),
      precipMm: (json['precip_mm'] as num).toDouble(),
      precipIn: (json['precip_in'] as num).toDouble(),
      snowCm: (json['snow_cm'] as num).toDouble(),
      humidity: json['humidity'] as int,
      cloud: json['cloud'] as int,
      feelslikeC: (json['feelslike_c'] as num).toDouble(),
      feelslikeF: (json['feelslike_f'] as num).toDouble(),
      windchillC: (json['windchill_c'] as num).toDouble(),
      windchillF: (json['windchill_f'] as num).toDouble(),
      heatindexC: (json['heatindex_c'] as num).toDouble(),
      heatindexF: (json['heatindex_f'] as num).toDouble(),
      dewpointC: (json['dewpoint_c'] as num).toDouble(),
      dewpointF: (json['dewpoint_f'] as num).toDouble(),
      willItRain: parseIntToBool(json['will_it_rain'] as int),
      chanceOfRain: json['chance_of_rain'] as int,
      willItSnow: parseIntToBool(json['will_it_snow'] as int),
      chanceOfSnow: json['chance_of_snow'] as int,
      visKm: (json['vis_km'] as num).toDouble(),
      visMiles: (json['vis_miles'] as num).toDouble(),
      gustMph: (json['gust_mph'] as num).toDouble(),
      gustKph: (json['gust_kph'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
      shortRad: (json['short_rad'] as num).toDouble(),
      diffRad: (json['diff_rad'] as num).toDouble(),
      airQuality: (json['air_quality'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$HourToJson(Hour instance) => <String, dynamic>{
      'time_epoch': instance.timeEpoch,
      'time': instance.time,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'wind_mph': instance.windMph,
      'wind_kph': instance.windKph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'pressure_in': instance.pressureIn,
      'precip_mm': instance.precipMm,
      'precip_in': instance.precipIn,
      'snow_cm': instance.snowCm,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslikeC,
      'feelslike_f': instance.feelslikeF,
      'windchill_c': instance.windchillC,
      'windchill_f': instance.windchillF,
      'heatindex_c': instance.heatindexC,
      'heatindex_f': instance.heatindexF,
      'dewpoint_c': instance.dewpointC,
      'dewpoint_f': instance.dewpointF,
      'will_it_rain': instance.willItRain,
      'chance_of_rain': instance.chanceOfRain,
      'will_it_snow': instance.willItSnow,
      'chance_of_snow': instance.chanceOfSnow,
      'vis_km': instance.visKm,
      'vis_miles': instance.visMiles,
      'gust_mph': instance.gustMph,
      'gust_kph': instance.gustKph,
      'uv': instance.uv,
      'air_quality': instance.airQuality,
      'short_rad': instance.shortRad,
      'diff_rad': instance.diffRad,
    };

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) =>
    LocationResponse(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      tzId: json['tz_id'] as String,
      localtimeEpoch: json['localtime_epoch'] as int,
      localtime: json['localtime'] as String,
    );

Map<String, dynamic> _$LocationResponseToJson(LocationResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tzId,
      'localtime_epoch': instance.localtimeEpoch,
      'localtime': instance.localtime,
    };
