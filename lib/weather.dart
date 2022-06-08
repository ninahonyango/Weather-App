import 'package:flutter/material.dart';
import 'data_service.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {

  String place = '';
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Column(
        children: <Widget>[

          //city name
          const SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextField(
                controller: _cityTextController,
                decoration: InputDecoration(
                  // border: InputBorder.none,
                  hintText: 'enter city name',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: () {_search();}, child: Text('Search')),

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
                'Clouds',
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
                '20.53',
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
                '1022',
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
                '71',
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
  void _search () async{
    final response = await _dataService.getWeather(_cityTextController.text);
    print(response.cityName);
    setState((){
      place = _cityTextController.text;
    });
  }
}


