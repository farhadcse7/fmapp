import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fmapp/data/weather.dart';
import 'package:fmapp/data/weather_data.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  List<Weather> getData(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Weather>((json) => Weather.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final List<Weather> weatherData = getData(weatherJson);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather Info App",
        ),
      ),
      body: ListView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) => Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                "City: ${weatherData[index].city}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Temperature: ${weatherData[index].temperature}°C"),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Condition: ${weatherData[index].condition}"),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Humidity: ${weatherData[index].humidity}%"),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Wind Speed: ${weatherData[index].windSpeed} m/s"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}