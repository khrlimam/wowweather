const String kAppName = "Wow Weather";
const String kHumidity = "Humidity";
const String kWind = "Wind";
const String kVisibility = "Visibility";
const String kWeeklyForecast = "Weekly Forecast";
const String kLoadingWeather = "Loading weather...";

extension Str on String {
  String titled() => trim()
      .split(" ")
      .map((e) => "${e[0].toUpperCase()}${e.substring(1)}")
      .join(" ");
}
