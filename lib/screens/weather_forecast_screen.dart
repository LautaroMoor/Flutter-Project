import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tp_flutter/widgets/weather_forecast_detail_screen.dart';
import 'package:tp_flutter/providers/city_provider.dart';
import 'package:provider/provider.dart';

class WeatherForecastScreen extends StatefulWidget {
  WeatherForecastScreen();

  @override
  _WeatherForecastScreenState createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  @override
  Widget build(BuildContext context) {
    CityProvider cityProvider = Provider.of<CityProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pronóstico del Tiempo - ${cityProvider.city}'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          return await cityProvider.fetchWeatherData(cityProvider.city);
        },
        child: ListView.builder(
          itemCount: cityProvider.forecastData.length,
          itemBuilder: (context, index) {
            var forecast = cityProvider.forecastData[index];
            var temperature = forecast['main']['temp'];
            var description = forecast['weather'][0]['description'];
            var timestamp =
                forecast['dt'] * 1000; // Convertir segundos a milisegundos
            var date = DateTime.fromMillisecondsSinceEpoch(timestamp);
            var formattedDate = DateFormat('dd/MM/yyyy').format(date);
            var formattedTime = DateFormat('hh:mm a').format(date);

            return ListTile(
              title: Text('$formattedDate - $formattedTime'),
              subtitle: Text('$temperature°C - $description'),
              onLongPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherForecastDetailScreen(
                      date: formattedDate,
                      time: formattedTime,
                      temperature: temperature,
                      description: description,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
