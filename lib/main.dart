import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_flutter/providers/city_provider.dart';

import 'package:tp_flutter/screens/screens.dart';
import 'package:tp_flutter/themes/default_theme.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CityProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tu aplicación de clima',
        theme: ThemeData(
          primarySwatch: DefaultTheme.primary,
        ),
        // home: HomeScreen(),
        initialRoute: 'home',
        routes: {
          // Por si en un futuro se agrega un menu desplegable
          'home': (context) => HomeScreen(),
          'weather_current': (context) => WeatherCurrentScreen(),
          'weather_forecast': (context) => WeatherForecastScreen(),
          'weather_list': (context) => WeatherListScreen()
        });
  }
}
