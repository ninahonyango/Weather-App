/*
{
  "weather": [
    {
      "description": "clear sky",
      "icon": "01d"
    }
  ],
  "main": {
    "temp": 282.55,

    "pressure": 1023,
    "humidity": 100
  },
  "name": "Mountain View",
  }
*/

class WeatherResponse {
  final String cityName;

  WeatherResponse(
      {
        required this.cityName
      }
      );

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    return WeatherResponse(cityName: cityName);
  }
}