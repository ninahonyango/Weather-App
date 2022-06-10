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

class TemperatureInfo {
  final double temperature;

  TemperatureInfo(
      {
        required this.temperature
      }
      );
  factory TemperatureInfo.fromJson(Map<String, dynamic> json) {
    final temperature = json['temp'];
    return TemperatureInfo(temperature: temperature);
  }
}
class WeatherResponse {
  final String cityName;
  final TemperatureInfo tempInfo;

  WeatherResponse(
      {
        required this.cityName
        this.tempInfo
      }
      );

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    return WeatherResponse(cityName: cityName);
  }
}