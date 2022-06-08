import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app1/models.dart';

// const String appid = "78a9a8ccd663901bcb952cca2401c9ce";
class DataService {
  Future<WeatherResponse> getWeather(String city) async {
    // https://api.openweathermap.org/data/2.5/weather?q=kisumu&appid=5970202adc00a55f3ed9b4133494ef75

    final queryParameters = {
      'q': city,
      'appid': '5970202adc00a55f3ed9b4133494ef75'
    };

    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameters);

    final response = await http.get(uri);

    print(response.body);
    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);
  }
}
