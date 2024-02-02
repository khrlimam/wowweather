// ignore_for_file: prefer_final_fields

import 'dart:async';

import 'package:core/feature/home/domain/home.dart';
import 'package:core/feature/home/domain/weather/current.dart';
import 'package:core/feature/home/domain/weather/forecast.dart';
import 'package:core/feature/home/usecase/get_weather.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:wow_weather/ui/home/vm.dart';
import 'package:wow_weather/util/consts.dart';

import '../../callback/default.dart';

part 'vm_impl.g.dart';

@Injectable(as: HomeViewModel)
class HomeViewModelImpl = HomeViewModelBase with _$HomeViewModelImpl;

abstract class HomeViewModelBase with Store implements HomeViewModel {
  final GetWeatherForecastUseCase _forecastUseCase;

  late StreamSubscription<WeatherHome> _subscription;

  late Exception exception;

  DefaultUiStateCallback? _callback;

  HomeViewModelBase(this._forecastUseCase);

  @override
  @action
  void searchWeather(String location) {
    _callback?.onLoading();
    _subscription = _forecastUseCase(location).handleError((err) {
      _callback?.onError(err);
    }).listen((resp) {
      _callback?.onFinished();
      _weatherHome = resp;
      _updateWeeklyForecast(resp.weeklyForecasts);
      _updateHourlyForecast(resp.hourlyForecasts);
    });
  }

  @override
  void setUiStateCallback(DefaultUiStateCallback callback) {
    _callback = callback;
  }

  @override
  void init() {
    searchWeather(kDefaultLocation);
  }

  @override
  void dispose() {
    _subscription.cancel();
  }

  void _updateList<T>(List<T> Function() list, List<T> newData) {
    list().clear();
    list().addAll(newData);
  }

  void _updateHourlyForecast(List<Weather> data) =>
      _updateList(() => _hourlyForecasts, data);

  void _updateWeeklyForecast(List<ForecastWeather> data) =>
      _updateList(() => _weeklyForecasts, data);

  @protected
  @observable
  ObservableList<Weather> _hourlyForecasts = ObservableList.of([]);

  @override
  @computed
  ObservableList<Weather> get hourlyForecasts => _hourlyForecasts;

  @protected
  @observable
  ObservableList<ForecastWeather> _weeklyForecasts = ObservableList.of([]);

  @override
  @computed
  ObservableList<ForecastWeather> get weeklyForecasts => _weeklyForecasts;

  @protected
  @observable
  WeatherHome? _weatherHome;

  @override
  @computed
  WeatherHome? get weatherHome => _weatherHome;
}
