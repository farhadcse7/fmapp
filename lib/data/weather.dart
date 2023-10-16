class Weather {
  String city;
  int temperature;
  String condition;
  int humidity;
  double windSpeed;

  Weather(
      {required this.city,
        required this.temperature,
        required this.condition,
        required this.humidity,
        required this.windSpeed});

  factory Weather.fromJson(Map<String, dynamic> photoJson) {
    return Weather(
        city: photoJson['city'],
        temperature: photoJson['temperature'],
        condition: photoJson['condition'],
        humidity: photoJson['humidity'],
        windSpeed: photoJson['windSpeed']);
  }
}