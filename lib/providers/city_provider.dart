import 'package:flutter/material.dart';

class CityProvider extends ChangeNotifier {
  String _city = '';

  String get city => _city;

  void updateCity(String newCity) {
    _city = newCity;
    notifyListeners();
  }
}
