import 'package:core/feature/home/domain/home.dart';

mixin HomeViewModel {
  WeatherHome get weatherHome;

  void searchWeather(String location);

  void init();

  void dispose();
}
