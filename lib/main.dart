import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wow_weather/app.dart';
import 'package:wow_weather/ui/home/view.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const WowWeatherApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wow Weather',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
