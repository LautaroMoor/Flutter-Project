import 'package:flutter/material.dart';
import 'package:tp_flutter/providers/city_provider.dart';
import 'package:provider/provider.dart';

class WeatherCurrentScreen extends StatefulWidget {
  // final String city;

  // WeatherCurrentScreen({required this.city});

  @override
  _WeatherCurrentScreenState createState() => _WeatherCurrentScreenState();
}

class _WeatherCurrentScreenState extends State<WeatherCurrentScreen> {
  // @override
  // void initState() {
  //   super.initState();

  //   currentWeatherData = {
  //     "currentWeather": {
  //       "city": "Estado de Bahia",
  //       "temperature": 21.03,
  //       "weatherDescription": "nubes"
  //     }
  //   };
  // }

  @override
  Widget build(BuildContext context) {
    CityProvider cityProvider = Provider.of<CityProvider>(context);
    Map<String, dynamic> currentWeatherData = cityProvider.currentWeatherData;

    var temperature = currentWeatherData['currentWeather']['temperature'];
    var description =
        currentWeatherData['currentWeather']['weatherDescription'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Clima Actual - ${cityProvider.city}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Temperatura: $temperature°C',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Descripción: $description',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
