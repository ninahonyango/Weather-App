/*
     {
      "weather": [
      {
        "description": "light intensity drizzle"
      }
     ],  
     "main": {
       "temp": 280.32,
       "pressure": 1012,
       "humidity": 81,
       "temp_min": 279.15,
       "temp_max": 281.15
     }, 
     "name": "London"
     }                   
*/

class WeatherResponse {
  List<Weather>? weather;
  Main? main;
  String? name;

  WeatherResponse({this.weather, this.main, this.name});

  WeatherResponse.fromJson(Map<String, dynamic> json) {
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(new Weather.fromJson(v));
      });
    }
    main = json['main'] != null ? new Main.fromJson(json['main']) : null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    if (this.main != null) {
      data['main'] = this.main!.toJson();
    }
    data['name'] = this.name;
    return data;
  }
}

class Weather {
  String? description;

  Weather({this.description});

  Weather.fromJson(Map<String, dynamic> json) {
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    return data;
  }
}

class Main {
  double? temp;
  int? pressure;
  int? humidity;

  Main({this.temp, this.pressure, this.humidity});

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    pressure = json['pressure'];
    humidity = json['humidity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    return data;
  }
}






// class WeatherInfo{
//   final String description;
//   final String icon;

//   WeatherInfo({required this.description, required this.icon});

//   factory WeatherInfo.fromJson(Map<String, dynamic> json){
//     final description = json['description'];
//     final icon = json['icon'];
//     return WeatherInfo(description: description, icon: icon);
//   }
// }


// class TemperatureInfo {
//   final double temperature;

//   TemperatureInfo({required this.temperature});
  
//   factory TemperatureInfo.fromJson(Map<String, dynamic> json){
//     final temperature = json['temp'];
//     return TemperatureInfo(temperature: temperature);
//   }
// }


// class PressureInfo {
//   final double pressure;

//   PressureInfo({required this.pressure});
  
//   factory PressureInfo.fromJson(Map<String, dynamic> json){
//     final pressure = json['pressure'];
//     return PressureInfo(pressure: pressure);
//   }
// }


// class HumidityInfo {
//   final double humidity;

//   HumidityInfo({required this.humidity});
  
//   factory HumidityInfo.fromJson(Map<String, dynamic> json){
//     final humidity = json['humidity'];
//     return HumidityInfo(humidity: humidity);
//   }
// }


// class WeatherResponse{
//   final String cityName;
//   final TemperatureInfo tempInfo;
//   final WeatherInfo weatherInfo;
//   // final PressureInfo pressureInfo;
//   // final HumidityInfo humidityInfo;

//   WeatherResponse({
//     required this.cityName, 
//     required this.tempInfo, 
//     required this.weatherInfo, 
//     // required this.pressureInfo,
//     // required this.humidityInfo,
//     });

//   factory WeatherResponse.fromJson(Map<String, dynamic> json){
//     final cityName = json['name'];

//     final tempInfoJson = json['main'];
//     final tempInfo = TemperatureInfo.fromJson(tempInfoJson);

//     // final pressureInfoJson = json['main'];
//     // final pressureInfo = PressureInfo.fromJson(pressureInfoJson);

//     // final humidityInfoJson = json['main'];
//     // final humidityInfo = HumidityInfo.fromJson(humidityInfoJson);

//     final weatherInfoJson = json['weather'][0];
//     final weatherInfo = WeatherInfo.fromJson(weatherInfoJson);
    
//     return WeatherResponse(
//       cityName: cityName, 
//       tempInfo: tempInfo, 
//       weatherInfo: weatherInfo, 
//       // pressureInfo: pressureInfo,
//       // humidityInfo: humidityInfo
//       );
//   }
// }