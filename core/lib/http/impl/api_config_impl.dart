import 'package:core/config/api.dart';
import 'package:core/config/env.dart';
import 'package:injectable/injectable.dart';

import '../../const/const.dart';

@Singleton(as: ApiConfig)
class ApiConfigImpl implements ApiConfig {
  final EnvConfig _envConfig;

  ApiConfigImpl(this._envConfig);

  @override
  String get apiKey => _envConfig.weatherApiKey;

  @override
  // the baseUrl can be determined by product flavor in the future, if required
  // something like env.baseUrl;
  String get baseUrl => kBaseUrl;
}
