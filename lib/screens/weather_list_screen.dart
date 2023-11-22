import 'package:flutter/material.dart';
import 'weather_current_screen.dart';
import 'weather_forecast_screen.dart';

class WeatherListScreen extends StatelessWidget {
  final String city;

  WeatherListScreen({required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pronóstico del Tiempo - $city'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherCurrentScreen(city: city),
                  ),
                );
              },
              child: Text('Ver Clima Actual'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherForecastScreen(city: city),
                  ),
                );
              },
              child: Text('Ver Pronóstico'),
            ),
          ],
        ),
      ),
    );
  }
}
