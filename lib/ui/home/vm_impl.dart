import 'dart:async';

import 'package:core/feature/home/domain/home.dart';
import 'package:core/feature/home/usecase/get_weather.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:wow_weather/ui/home/vm.dart';
import 'package:wow_weather/util/consts.dart';

part 'vm_impl.g.dart';

@Injectable(as: HomeViewModel)
class HomeViewModelImpl = _HomeViewModelImpl with _$HomeViewModelImpl;

abstract class _HomeViewModelImpl with Store implements HomeViewModel {
  final GetWeatherForecastUseCase _forecastUseCase;

  late StreamSubscription<WeatherHome> _subscription;

  _HomeViewModelImpl(this._forecastUseCase);

  @action
  @override
  void searchWeather(String location) {
    _subscription = _forecastUseCase(location).listen((value) {
      _weatherHome = value;
    });
  }

  @override
  void init() {
    searchWeather(kDefaultLocation);
  }

  @override
  void dispose() {
    _subscription.cancel();
  }

  @protected
  @observable
  late WeatherHome _weatherHome;

  @computed
  @override
  WeatherHome get weatherHome => _weatherHome;
}
