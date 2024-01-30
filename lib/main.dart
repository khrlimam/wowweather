import 'package:core/di.dart';
import 'package:flutter/material.dart';
import 'package:wow_weather/app.dart';
import 'package:wow_weather/di.dart';

void main() {
  configureCoreDependencies();
  configureAppDependencies();
  runApp(const WowWeatherApp());
}
