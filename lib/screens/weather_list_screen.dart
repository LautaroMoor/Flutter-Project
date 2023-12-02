import 'package:flutter/material.dart';
import 'weather_current_screen.dart';
import 'weather_forecast_screen.dart';
import 'package:tp_flutter/providers/city_provider.dart';
import 'package:provider/provider.dart';

class WeatherListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String city = Provider.of<CityProvider>(context).city;

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
                    builder: (context) => WeatherCurrentScreen(),
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
                    builder: (context) => WeatherForecastScreen(),
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
