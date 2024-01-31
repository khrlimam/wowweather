import 'package:core/config/env.dart';
import 'package:core/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:wow_weather/app.dart';
import 'package:wow_weather/config/env_config_impl.dart';
import 'package:wow_weather/di.dart';

void main() async {
  await configureConfigDependencies();
  await configureCoreDependencies();
  await configureAppDependencies();
  runApp(const WowWeatherApp());
}

Future<void> configureConfigDependencies() async {
  DotEnv envConfig = DotEnv();
  await envConfig.load(fileName: ".env");

  // manually register singleton for env config,
  // since it depends on app specific environment file, e.g: .env
  getIt.registerSingleton<EnvConfig>(EnvConfigImpl(envConfig));
}
