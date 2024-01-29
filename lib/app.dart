import 'package:flutter/material.dart';
import 'package:wow_weather/ui/home/view.dart';
import 'package:wow_weather/util/wordings.dart';

class WowWeatherApp extends StatelessWidget {
  const WowWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
