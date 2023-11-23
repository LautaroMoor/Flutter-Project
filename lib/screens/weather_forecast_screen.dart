import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherForecastScreen extends StatefulWidget {
  final String city;

  WeatherForecastScreen({required this.city});

  @override
  _WeatherForecastScreenState createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  List<dynamic> forecastData = []; // Aquí almacenarás los datos del pronóstico

  @override
  void initState() {
    super.initState();
    // Puedes cargar tus datos de pronóstico aquí (por ejemplo, desde un servicio o archivo JSON).
    // En este ejemplo, asigno directamente el JSON proporcionado.
    forecastData = [
      {
        "dt": 1700708400,
        "main": {
          "temp": 20.48,
          "feels_like": 20.12,
          "temp_min": 19.38,
          "temp_max": 20.48,
          "pressure": 1014,
          "sea_level": 1014,
          "grnd_level": 920,
          "humidity": 59,
          "temp_kf": 1.1
        },
        "weather": [
          {"id": 804, "main": "Clouds", "description": "nubes", "icon": "04n"}
        ],
        "clouds": {"all": 96},
        "wind": {"speed": 2.17, "deg": 140, "gust": 5.01},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-23 03:00:00"
      },
      {
        "dt": 1700719200,
        "main": {
          "temp": 18.54,
          "feels_like": 18.59,
          "temp_min": 17.29,
          "temp_max": 18.54,
          "pressure": 1014,
          "sea_level": 1014,
          "grnd_level": 920,
          "humidity": 82,
          "temp_kf": 1.25
        },
        "weather": [
          {
            "id": 803,
            "main": "Clouds",
            "description": "muy nuboso",
            "icon": "04n"
          }
        ],
        "clouds": {"all": 84},
        "wind": {"speed": 2.08, "deg": 144, "gust": 4.1},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-23 06:00:00"
      },
      {
        "dt": 1700730000,
        "main": {
          "temp": 19.05,
          "feels_like": 19.28,
          "temp_min": 19.05,
          "temp_max": 19.05,
          "pressure": 1017,
          "sea_level": 1017,
          "grnd_level": 922,
          "humidity": 87,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 802,
            "main": "Clouds",
            "description": "nubes dispersas",
            "icon": "03d"
          }
        ],
        "clouds": {"all": 40},
        "wind": {"speed": 2.61, "deg": 111, "gust": 6.61},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-23 09:00:00"
      },
      {
        "dt": 1700740800,
        "main": {
          "temp": 24.66,
          "feels_like": 24.72,
          "temp_min": 24.66,
          "temp_max": 24.66,
          "pressure": 1017,
          "sea_level": 1017,
          "grnd_level": 924,
          "humidity": 59,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 803,
            "main": "Clouds",
            "description": "muy nuboso",
            "icon": "04d"
          }
        ],
        "clouds": {"all": 69},
        "wind": {"speed": 2.95, "deg": 95, "gust": 4.2},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-23 12:00:00"
      },
      {
        "dt": 1700751600,
        "main": {
          "temp": 34.03,
          "feels_like": 32.69,
          "temp_min": 34.03,
          "temp_max": 34.03,
          "pressure": 1014,
          "sea_level": 1014,
          "grnd_level": 924,
          "humidity": 26,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01d"
          }
        ],
        "clouds": {"all": 0},
        "wind": {"speed": 2.55, "deg": 92, "gust": 2.5},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-23 15:00:00"
      },
      {
        "dt": 1700762400,
        "main": {
          "temp": 35.58,
          "feels_like": 33.84,
          "temp_min": 35.58,
          "temp_max": 35.58,
          "pressure": 1009,
          "sea_level": 1009,
          "grnd_level": 920,
          "humidity": 21,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01d"
          }
        ],
        "clouds": {"all": 7},
        "wind": {"speed": 3.5, "deg": 81, "gust": 3.8},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-23 18:00:00"
      },
      {
        "dt": 1700773200,
        "main": {
          "temp": 28.15,
          "feels_like": 27.41,
          "temp_min": 28.15,
          "temp_max": 28.15,
          "pressure": 1012,
          "sea_level": 1012,
          "grnd_level": 920,
          "humidity": 34,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 803,
            "main": "Clouds",
            "description": "muy nuboso",
            "icon": "04n"
          }
        ],
        "clouds": {"all": 82},
        "wind": {"speed": 2.16, "deg": 128, "gust": 3.81},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-23 21:00:00"
      },
      {
        "dt": 1700784000,
        "main": {
          "temp": 25.96,
          "feels_like": 25.96,
          "temp_min": 25.96,
          "temp_max": 25.96,
          "pressure": 1014,
          "sea_level": 1014,
          "grnd_level": 922,
          "humidity": 42,
          "temp_kf": 0
        },
        "weather": [
          {"id": 804, "main": "Clouds", "description": "nubes", "icon": "04n"}
        ],
        "clouds": {"all": 88},
        "wind": {"speed": 1.68, "deg": 83, "gust": 3.7},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-24 00:00:00"
      },
      {
        "dt": 1700794800,
        "main": {
          "temp": 21.64,
          "feels_like": 21.3,
          "temp_min": 21.64,
          "temp_max": 21.64,
          "pressure": 1014,
          "sea_level": 1014,
          "grnd_level": 921,
          "humidity": 55,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 801,
            "main": "Clouds",
            "description": "algo de nubes",
            "icon": "02n"
          }
        ],
        "clouds": {"all": 16},
        "wind": {"speed": 2.35, "deg": 112, "gust": 5.7},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-24 03:00:00"
      },
      {
        "dt": 1700805600,
        "main": {
          "temp": 18.09,
          "feels_like": 18.2,
          "temp_min": 18.09,
          "temp_max": 18.09,
          "pressure": 1015,
          "sea_level": 1015,
          "grnd_level": 920,
          "humidity": 86,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01n"
          }
        ],
        "clouds": {"all": 8},
        "wind": {"speed": 1.95, "deg": 153, "gust": 3.02},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-24 06:00:00"
      },
      {
        "dt": 1700816400,
        "main": {
          "temp": 19.14,
          "feels_like": 19.3,
          "temp_min": 19.14,
          "temp_max": 19.14,
          "pressure": 1017,
          "sea_level": 1017,
          "grnd_level": 922,
          "humidity": 84,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01d"
          }
        ],
        "clouds": {"all": 0},
        "wind": {"speed": 1.89, "deg": 145, "gust": 3.41},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-24 09:00:00"
      },
      {
        "dt": 1700827200,
        "main": {
          "temp": 29.25,
          "feels_like": 28.59,
          "temp_min": 29.25,
          "temp_max": 29.25,
          "pressure": 1016,
          "sea_level": 1016,
          "grnd_level": 924,
          "humidity": 37,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01d"
          }
        ],
        "clouds": {"all": 0},
        "wind": {"speed": 3.07, "deg": 77, "gust": 3.63},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-24 12:00:00"
      },
      {
        "dt": 1700838000,
        "main": {
          "temp": 36.47,
          "feels_like": 34.92,
          "temp_min": 36.47,
          "temp_max": 36.47,
          "pressure": 1012,
          "sea_level": 1012,
          "grnd_level": 923,
          "humidity": 21,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01d"
          }
        ],
        "clouds": {"all": 0},
        "wind": {"speed": 2.2, "deg": 42, "gust": 2.5},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-24 15:00:00"
      },
      {
        "dt": 1700848800,
        "main": {
          "temp": 36.87,
          "feels_like": 34.9,
          "temp_min": 36.87,
          "temp_max": 36.87,
          "pressure": 1009,
          "sea_level": 1009,
          "grnd_level": 920,
          "humidity": 18,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01d"
          }
        ],
        "clouds": {"all": 10},
        "wind": {"speed": 3.28, "deg": 82, "gust": 2.7},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-24 18:00:00"
      },
      {
        "dt": 1700859600,
        "main": {
          "temp": 27.95,
          "feels_like": 27.26,
          "temp_min": 27.95,
          "temp_max": 27.95,
          "pressure": 1012,
          "sea_level": 1012,
          "grnd_level": 920,
          "humidity": 34,
          "temp_kf": 0
        },
        "weather": [
          {"id": 804, "main": "Clouds", "description": "nubes", "icon": "04n"}
        ],
        "clouds": {"all": 90},
        "wind": {"speed": 1.12, "deg": 136, "gust": 2.12},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-24 21:00:00"
      },
      {
        "dt": 1700870400,
        "main": {
          "temp": 26.63,
          "feels_like": 26.63,
          "temp_min": 26.63,
          "temp_max": 26.63,
          "pressure": 1013,
          "sea_level": 1013,
          "grnd_level": 922,
          "humidity": 40,
          "temp_kf": 0
        },
        "weather": [
          {"id": 804, "main": "Clouds", "description": "nubes", "icon": "04n"}
        ],
        "clouds": {"all": 95},
        "wind": {"speed": 1.04, "deg": 156, "gust": 1.2},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-25 00:00:00"
      },
      {
        "dt": 1700881200,
        "main": {
          "temp": 24.02,
          "feels_like": 23.68,
          "temp_min": 24.02,
          "temp_max": 24.02,
          "pressure": 1013,
          "sea_level": 1013,
          "grnd_level": 921,
          "humidity": 46,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 803,
            "main": "Clouds",
            "description": "muy nuboso",
            "icon": "04n"
          }
        ],
        "clouds": {"all": 83},
        "wind": {"speed": 1.68, "deg": 111, "gust": 1.9},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-25 03:00:00"
      },
      {
        "dt": 1700892000,
        "main": {
          "temp": 21.58,
          "feels_like": 21.2,
          "temp_min": 21.58,
          "temp_max": 21.58,
          "pressure": 1013,
          "sea_level": 1013,
          "grnd_level": 919,
          "humidity": 54,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 802,
            "main": "Clouds",
            "description": "nubes dispersas",
            "icon": "03n"
          }
        ],
        "clouds": {"all": 50},
        "wind": {"speed": 1.33, "deg": 126, "gust": 1.72},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-25 06:00:00"
      },
      {
        "dt": 1700902800,
        "main": {
          "temp": 20.98,
          "feels_like": 20.91,
          "temp_min": 20.98,
          "temp_max": 20.98,
          "pressure": 1014,
          "sea_level": 1014,
          "grnd_level": 921,
          "humidity": 68,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01d"
          }
        ],
        "clouds": {"all": 4},
        "wind": {"speed": 1.8, "deg": 132, "gust": 3.41},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-25 09:00:00"
      },
      {
        "dt": 1700913600,
        "main": {
          "temp": 30.01,
          "feels_like": 29.37,
          "temp_min": 30.01,
          "temp_max": 30.01,
          "pressure": 1014,
          "sea_level": 1014,
          "grnd_level": 923,
          "humidity": 37,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 801,
            "main": "Clouds",
            "description": "algo de nubes",
            "icon": "02d"
          }
        ],
        "clouds": {"all": 13},
        "wind": {"speed": 3.35, "deg": 87, "gust": 3.81},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-25 12:00:00"
      },
      {
        "dt": 1700924400,
        "main": {
          "temp": 35.17,
          "feels_like": 33.96,
          "temp_min": 35.17,
          "temp_max": 35.17,
          "pressure": 1010,
          "sea_level": 1010,
          "grnd_level": 921,
          "humidity": 25,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 801,
            "main": "Clouds",
            "description": "algo de nubes",
            "icon": "02d"
          }
        ],
        "clouds": {"all": 14},
        "wind": {"speed": 4.87, "deg": 95, "gust": 4.81},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-25 15:00:00"
      },
      {
        "dt": 1700935200,
        "main": {
          "temp": 36.1,
          "feels_like": 34.46,
          "temp_min": 36.1,
          "temp_max": 36.1,
          "pressure": 1007,
          "sea_level": 1007,
          "grnd_level": 918,
          "humidity": 21,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 802,
            "main": "Clouds",
            "description": "nubes dispersas",
            "icon": "03d"
          }
        ],
        "clouds": {"all": 38},
        "wind": {"speed": 3.15, "deg": 98, "gust": 3.52},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-25 18:00:00"
      },
      {
        "dt": 1700946000,
        "main": {
          "temp": 28.56,
          "feels_like": 28.02,
          "temp_min": 28.56,
          "temp_max": 28.56,
          "pressure": 1009,
          "sea_level": 1009,
          "grnd_level": 918,
          "humidity": 38,
          "temp_kf": 0
        },
        "weather": [
          {"id": 804, "main": "Clouds", "description": "nubes", "icon": "04n"}
        ],
        "clouds": {"all": 100},
        "wind": {"speed": 1.55, "deg": 198, "gust": 3.4},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-25 21:00:00"
      },
      {
        "dt": 1700956800,
        "main": {
          "temp": 25.86,
          "feels_like": 25.68,
          "temp_min": 25.86,
          "temp_max": 25.86,
          "pressure": 1012,
          "sea_level": 1012,
          "grnd_level": 920,
          "humidity": 45,
          "temp_kf": 0
        },
        "weather": [
          {"id": 804, "main": "Clouds", "description": "nubes", "icon": "04n"}
        ],
        "clouds": {"all": 97},
        "wind": {"speed": 1.6, "deg": 119, "gust": 1.6},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-26 00:00:00"
      },
      {
        "dt": 1700967600,
        "main": {
          "temp": 21.25,
          "feels_like": 21.21,
          "temp_min": 21.25,
          "temp_max": 21.25,
          "pressure": 1014,
          "sea_level": 1014,
          "grnd_level": 920,
          "humidity": 68,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 802,
            "main": "Clouds",
            "description": "nubes dispersas",
            "icon": "03n"
          }
        ],
        "clouds": {"all": 44},
        "wind": {"speed": 3.73, "deg": 119, "gust": 10.7},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-26 03:00:00"
      },
      {
        "dt": 1700978400,
        "main": {
          "temp": 18.08,
          "feels_like": 18.24,
          "temp_min": 18.08,
          "temp_max": 18.08,
          "pressure": 1014,
          "sea_level": 1014,
          "grnd_level": 919,
          "humidity": 88,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 802,
            "main": "Clouds",
            "description": "nubes dispersas",
            "icon": "03n"
          }
        ],
        "clouds": {"all": 46},
        "wind": {"speed": 2.89, "deg": 115, "gust": 11.5},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "n"},
        "dt_txt": "2023-11-26 06:00:00"
      },
      {
        "dt": 1700989200,
        "main": {
          "temp": 19.41,
          "feels_like": 19.47,
          "temp_min": 19.41,
          "temp_max": 19.41,
          "pressure": 1015,
          "sea_level": 1015,
          "grnd_level": 921,
          "humidity": 79,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 803,
            "main": "Clouds",
            "description": "muy nuboso",
            "icon": "04d"
          }
        ],
        "clouds": {"all": 61},
        "wind": {"speed": 5.12, "deg": 110, "gust": 11.72},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-26 09:00:00"
      },
      {
        "dt": 1701000000,
        "main": {
          "temp": 26.51,
          "feels_like": 26.51,
          "temp_min": 26.51,
          "temp_max": 26.51,
          "pressure": 1015,
          "sea_level": 1015,
          "grnd_level": 923,
          "humidity": 48,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 803,
            "main": "Clouds",
            "description": "muy nuboso",
            "icon": "04d"
          }
        ],
        "clouds": {"all": 61},
        "wind": {"speed": 6.29, "deg": 105, "gust": 8.9},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-26 12:00:00"
      },
      {
        "dt": 1701010800,
        "main": {
          "temp": 31.35,
          "feels_like": 30.54,
          "temp_min": 31.35,
          "temp_max": 31.35,
          "pressure": 1013,
          "sea_level": 1013,
          "grnd_level": 922,
          "humidity": 34,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01d"
          }
        ],
        "clouds": {"all": 4},
        "wind": {"speed": 5.57, "deg": 109, "gust": 7.11},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-26 15:00:00"
      },
      {
        "dt": 1701021600,
        "main": {
          "temp": 32.65,
          "feels_like": 31.57,
          "temp_min": 32.65,
          "temp_max": 32.65,
          "pressure": 1010,
          "sea_level": 1010,
          "grnd_level": 920,
          "humidity": 30,
          "temp_kf": 0
        },
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "cielo claro",
            "icon": "01d"
          }
        ],
        "clouds": {"all": 2},
        "wind": {"speed": 5.39, "deg": 127, "gust": 6.31},
        "visibility": 10000,
        "pop": 0,
        "sys": {"pod": "d"},
        "dt_txt": "2023-11-26 18:00:00"
      }
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pronóstico del Tiempo - ${widget.city}'),
      ),
      body: ListView.builder(
        itemCount: forecastData.length,
        itemBuilder: (context, index) {
          var forecast = forecastData[index];
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
          );
        },
      ),
    );
  }
}
