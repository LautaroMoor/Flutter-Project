import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CityProvider extends ChangeNotifier {
  String _city = '';
  List<dynamic> forecastData = [];
  Map<String, dynamic> currentWeatherData = {};

  String get city => _city;

  void set city(String city) {
    _city = city;
    fetchWeatherForecastData(_city);
    fetchWeatherData(_city);
    notifyListeners();
  }

  Future<void> fetchWeatherForecastData(String city) async {
    try {
      final String apiUrl =
          'https://api-rest-weather.onrender.com/api/v1/getList50Length/next30weather?city=${city}';
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        forecastData = json.decode(response.body);
        notifyListeners();
      }
    } catch (e) {}
  }

  Future<void> fetchWeatherData(String city) async {
    try {
      final String apiUrl =
          'https://api-rest-weather.onrender.com/api/v1/getById/city?city=${city}';
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        currentWeatherData = json.decode(response.body);
        notifyListeners();
      }
    } catch (e) {}
  }
}
