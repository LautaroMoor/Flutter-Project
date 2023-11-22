import 'package:flutter/material.dart';

class WeatherForecastScreen extends StatefulWidget {
  final String city;

  WeatherForecastScreen({required this.city});

  @override
  _WeatherForecastScreenState createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pronóstico del Tiempo - ${widget.city}'),
      ),
      body: Container(),
    );
  }
}
