import 'package:core/di.dart';
import 'package:core/feature/home/domain/weather/current.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:wow_weather/ui/home/vm.dart';
import 'package:wow_weather/util/weather_ext.dart';
import 'package:wow_weather/util/wordings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeViewModel _homeViewModel = getIt<HomeViewModel>();

  @override
  void initState() {
    super.initState();
    _homeViewModel.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "221B Baker Street",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("tested")));
                  },
                )
              ],
            ),
            Observer(
                builder: (_) => Text(
                    "TODAY in ${_homeViewModel.weatherHome.location.toString()}",
                    style: Theme.of(context).textTheme.labelSmall)),
            Flexible(
              child: SizedBox(
                width: double.infinity,
                child: Observer(
                  builder: (_) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            _homeViewModel
                                .weatherHome.currentWeather?.weatherCondition
                                .getIcon(),
                            size: 70,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Text(
                            "${_homeViewModel.weatherHome.currentWeather?.tempInCelcius}°",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.w500)),
                        _windHumidityVisibilityCard(
                            _homeViewModel.weatherHome.currentWeather),
                      ],
                    );
                  },
                ),
              ),
            ),
            listItem("Tomorrow"),
            listItem("Sunday"),
            listItem("Monday")
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _homeViewModel.dispose();
  }

  Widget listItem(String day) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(day),
            ),
            const Text("8°"),
            const SizedBox(width: 8),
            const Icon(Icons.cloud)
          ],
        ),
        const Divider(thickness: 2.5, color: Colors.black)
      ],
    );
  }

  Widget _windHumidityVisibilityCard(Weather? weather) {
    Widget cardItem(IconData icon, String key, String value) => Column(
          children: [
            Icon(icon, size: 32),
            const SizedBox(height: 12),
            Text(value, style: Theme.of(context).textTheme.titleSmall),
            Text(key, style: Theme.of(context).textTheme.labelSmall),
          ],
        );

    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.inversePrimary,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            cardItem(
              WeatherIcons.wind,
              kWind,
              "${weather?.windKiloPerHour}km/h",
            ),
            cardItem(
              WeatherIcons.humidity,
              kHumidity,
              "${weather?.humidity}%",
            ),
            cardItem(
              WeatherIcons.smoke,
              kVisibility,
              "${weather?.visibilityInKm}km",
            ),
          ],
        ),
      ),
    );
  }
}
