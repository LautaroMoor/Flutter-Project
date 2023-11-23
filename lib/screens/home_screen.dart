import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_flutter/providers/city_provider.dart';
import 'weather_list_screen.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación del clima'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: _cityController,
                decoration: InputDecoration(
                  hintText: 'Ingresa la localidad',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<CityProvider>(context, listen: false)
                    .updateCity(_cityController.text);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherListScreen(),
                  ),
                );
              },
              child: Text('Buscar'),
            ),
          ],
        ),
      ),
    );
  }
}
