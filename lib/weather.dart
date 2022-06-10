import 'package:flutter/material.dart';
import 'package:weather_app1/data_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  String place = '';
  String descr = '';
  String tempe = '';
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body:Column(
        children: <Widget>[

          //city name
          const SizedBox(height: 30),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextField(
                controller: _cityTextController,
                decoration: InputDecoration(
                  labelText: 'enter city name',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),

          ElevatedButton(onPressed: () {
            _search();
            place = _cityTextController.text;
          }, child: Text('Search')),

          //Place
          const SizedBox(height: 30),
          Row(
            children: [
              const Text(
                'Place: ',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 25.0,
                ),
              ),

              Text(
                place,
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          //Description
          const SizedBox(height: 30),
          Row(
            children: [
              const Text(
                'Description: ',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 25.0,
                ),
              ),

              Text(
                descr,
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          //Temperature
          const SizedBox(height: 30),
          Row(
            children: [
              const Text(
                'Temperature: ',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 25.0,
                ),
              ),

              Text(
                tempe,
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          //Perceived
          const SizedBox(height: 30),
          Row(
            children: [
              const Text(
                'Perceived: ',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 25.0,
                ),
              ),

              Text(
                '20.49',
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          //Pressure
          const SizedBox(height: 30),
          Row(
            children: [
              const Text(
                'Pressure: ',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 25.0,
                ),
              ),

              Text(
                press,
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          //Humidity
          const SizedBox(height: 30),
          Row(
            children: [
              const Text(
                'Humidity: ',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 25.0,
                ),
              ),

              Text(
                hum,
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],

      ),

    );

  }

  String hum = '';
  String press = '';
  double tem = 0;
  int hu = 0;
  int pre = 0;

  Future<void> _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
    setState((){});


    place = response.name!;
    tem = response.main!.temp!;
    hu = response.main!.humidity!;
    pre = response.main!.pressure!;
    descr = response.weather![0].description!;
    hum = hu.toString();
    press = pre.toString();
    tempe = tem.toString() + 'F';

  }

}
