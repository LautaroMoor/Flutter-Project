import 'package:flutter/material.dart';

class WeatherCurrentScreen extends StatefulWidget {
  final String city;

  WeatherCurrentScreen({required this.city});

  @override
  _WeatherCurrentScreenState createState() => _WeatherCurrentScreenState();
}

class _WeatherCurrentScreenState extends State<WeatherCurrentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima Actual - ${widget.city}'),
      ),
      body: Container(),
    );
  }
}
