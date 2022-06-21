import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models.dart';

// const String appid = "78a9a8ccd663901bcb952cca2401c9ce";
class DataService {
  Future<WeatherResponse> getWeather(String city, String lat, String long) async {
     // https://api.openweathermap.org/data/2.5/weather?q=kisumu&appid=78a9a8ccd663901bcb952cca2401c9ce

     final queryParameters;
     
     if (city == ''){
      queryParameters = {
       'lat': lat,
       'lon': long,
       'appid': '78a9a8ccd663901bcb952cca2401c9ce',
       'units': 'imperial'
       };

     }
     else{
      queryParameters = {
       'q': city, 
       'appid': '78a9a8ccd663901bcb952cca2401c9ce',
       'units': 'imperial'
       };

     }

     

     final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParameters);

     final response = await http.get(uri);

    //  print(response.body);
     final json = jsonDecode(response.body);
     return WeatherResponse.fromJson(json);
  } 
}