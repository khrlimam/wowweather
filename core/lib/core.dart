library core;

import 'package:flutter_dotenv/flutter_dotenv.dart';

String apiKey() => dotenv.env['WEATHER_API_KEY'] ?? "";
