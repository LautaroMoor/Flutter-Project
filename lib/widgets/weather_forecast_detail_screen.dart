import 'package:flutter/material.dart';

class WeatherForecastDetailScreen extends StatelessWidget {
  final String date;
  final String time;
  final double temperature;
  final String description;

  WeatherForecastDetailScreen({
    required this.date,
    required this.time,
    required this.temperature,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Pronóstico'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Fecha: $date',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Hora: $time',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Temperatura: $temperature°C',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Descripción: $description',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
