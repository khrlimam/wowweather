import 'package:core/config/env.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: EnvConfig)
class EnvConfigImpl implements EnvConfig {
  final DotEnv _env;

  EnvConfigImpl(this._env);

  @override
  String get weatherApiKey => _env.get("WEATHER_API_KEY");
}
