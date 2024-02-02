import 'dart:async';

import 'package:core/di.dart';
import 'package:core/feature/home/domain/weather/current.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:wow_weather/callback/default.dart';
import 'package:wow_weather/ui/home/vm.dart';
import 'package:wow_weather/util/after_layout.dart';
import 'package:wow_weather/util/weather_ext.dart';
import 'package:wow_weather/util/wordings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AfterLayoutMixin<HomePage> {
  final HomeViewModel _homeViewModel = getIt<HomeViewModel>();
  late TextTheme _textTheme;
  late ColorScheme _colorScheme;

  final _searchLocationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;
    _colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                _currentWeather(),
                const SizedBox(height: 16),
                Text(kWeeklyForecast, style: _textTheme.labelLarge),
                _weeklyForecastList(),
              ],
            )));
  }

  Widget _locationDate() {
    return Observer(
      builder: (_) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _colorScheme.onPrimaryContainer,
        ),
        child: Text(
            "Today in ${_homeViewModel.weatherHome?.location?.toString() ?? ""}",
            style: _textTheme.labelSmall?.copyWith(color: Colors.white)),
      ),
    );
  }

  Widget _weeklyForecastList() {
    return Observer(
      builder: (_) => ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _homeViewModel.weeklyForecasts.length,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return _forecastItemList(_homeViewModel.weeklyForecasts[index].day);
          }),
    );
  }

  Widget _currentWeather() {
    return SizedBox(
      width: double.infinity,
      child: Observer(
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              _locationDate(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      _homeViewModel
                          .weatherHome?.currentWeather?.weatherCondition
                          .getIcon(),
                      size: 15,
                    ),
                  ),
                  Text(
                    _homeViewModel.weatherHome?.currentWeather?.conditionDesc
                            ?.titled() ??
                        "",
                    style: _textTheme.labelMedium,
                  )
                ],
              ),
              Text(
                  "${_homeViewModel.weatherHome?.currentWeather?.tempInCelcius ?? ""}°",
                  style: _textTheme.headlineLarge
                      ?.copyWith(fontWeight: FontWeight.w500, fontSize: 120)),
              _windHumidityVisibilityCard(
                  _homeViewModel.weatherHome?.currentWeather),
            ],
          );
        },
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: TextField(
              textInputAction: TextInputAction.search,
              controller: _searchLocationController,
              decoration:
                  const InputDecoration(hintText: "Search for location"),
              onSubmitted: (v) => _homeViewModel.searchWeather(v)),
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            _homeViewModel.searchWeather(_searchLocationController.text);
          },
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _homeViewModel.dispose();
  }

  Widget _forecastItemList(Weather? weather) {
    Widget leftItem(Weather? weather) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${weather?.dateDefaultFormat}",
            style: _textTheme.labelSmall?.copyWith(color: Colors.white),
          ),
          Text(
            "${weather?.conditionDesc?.titled()}",
            style: _textTheme.bodySmall?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${weather?.tempInCelcius}°",
                  style:
                      _textTheme.displayMedium?.copyWith(color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white.withOpacity(.2)),
                  width: 2,
                  height: 40,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wind: ${weather?.windKiloPerHour}Km/h",
                    style: _textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Humidity: ${weather?.humidity}%",
                    style: _textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Visibility: ${weather?.visibilityInKm}Km",
                    style: _textTheme.bodySmall?.copyWith(color: Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      );
    }

    return Card(
      color: _colorScheme.onPrimaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            leftItem(weather),
            Row(
              children: [
                const Spacer(flex: 1),
                Icon(
                  weather?.weatherCondition.getIcon(),
                  color: Colors.white,
                  size: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget _forecastItem(Weather? weather) {
  //   return Card(
  //     elevation: 2,
  //     shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(5))),
  //     child: Container(
  //       padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Row(
  //             mainAxisSize: MainAxisSize.min,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "${weather?.tempInCelcius}",
  //                 style: Theme.of(context).textTheme.titleMedium,
  //               ),
  //               const Icon(WeatherIcons.celsius, size: 10),
  //             ],
  //           ),
  //           Icon(weather?.weatherCondition.getIcon(), size: 15),
  //           const SizedBox(height: 12),
  //           Text(
  //             "${weather?.dateSimpleFormat}",
  //             style: Theme.of(context).textTheme.labelSmall,
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _windHumidityVisibilityCard(Weather? weather) {
    Widget cardItem(IconData icon, String key, String value) => Column(
          children: [
            Icon(icon, size: 32, color: Colors.white),
            const SizedBox(height: 12),
            Text(value,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
            Text(key,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white)),
          ],
        );

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Theme.of(context).colorScheme.primary,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            cardItem(
              WeatherIcons.windy,
              kWind,
              "${weather?.windKiloPerHour ?? ""}km/h",
            ),
            cardItem(
              WeatherIcons.raindrop,
              kHumidity,
              "${weather?.humidity ?? ""}%",
            ),
            cardItem(
              Icons.remove_red_eye_outlined,
              kVisibility,
              "${weather?.visibilityInKm ?? ""}km",
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _homeViewModel.setUiStateCallback(
        defaultUiState(loading: _loading, finished: _finished, error: _error));
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    _homeViewModel.init();
  }

  ScaffoldFeatureController? _uiStateSnackBar;

  ScaffoldFeatureController _snackBar(Widget child) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: child, dismissDirection: DismissDirection.horizontal,));
  }

  void _loading() {
    _uiStateSnackBar = _snackBar(const Text(kLoadingWeather));
  }

  void _finished() {
    _uiStateSnackBar?.close();
  }

  // can implement better error response on core
  void _error(Exception value) {
    _finished();
    _uiStateSnackBar = _snackBar(Text(value.toString()));
  }
}
