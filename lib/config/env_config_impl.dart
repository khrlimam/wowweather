import 'package:core/config/env.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:wow_weather/util/consts.dart';

class EnvConfigImpl implements EnvConfig {
  final DotEnv _env;

  EnvConfigImpl(this._env);

  @override
  String get weatherApiKey => _env.get(kWeatherApiKey);
}
