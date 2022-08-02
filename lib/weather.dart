import 'package:flutter/material.dart';
import 'package:weather_app1/data_service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.height;
    
 return SafeArea(
      child: Stack(
        children: [
          
          Container(
            color: Color.fromARGB(255, 204, 255, 204),
            height: height,
            width: widht,
            padding: const EdgeInsets.all(20.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextField(
                  controller: _cityTextController,
                  decoration: InputDecoration(
                    labelText: 'Enter city name',
                    suffixIcon: GestureDetector( onTap: _search, child: Icon(Icons.search)),
                  ),
              ),
                ),
                    
                ]
              ),

          ),
          
    
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              // color: Color.fromARGB(255, 204, 255, 204),

            decoration: new BoxDecoration(
                color: Color.fromARGB(255, 129, 165, 148),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              )
            ),
            
              
              child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 7, 156, 232),
                          border: Border.all(
                            color: Color.fromARGB(255, 7, 156, 232),
                          ),
                        borderRadius: BorderRadius.all(Radius.circular(60))
                      ),
                      child: ListTile(
                        leading:FaIcon(
                          color: Colors.white,
                          FontAwesomeIcons.locationDot),
                        title: Text(
                          style: TextStyle(color: Colors.orangeAccent),
                          'Place',
                          // style: TextStyle(color: Colors.black),
                          ),
                        trailing: Text(
                            style: TextStyle(color: Colors.white),place),
                      ),
                    ),
          
                    SizedBox(height: 10,),
                    Container(                      
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 7, 156, 232),
                          border: Border.all(
                            color: Color.fromARGB(255, 7, 156, 232),
                          ),
                        borderRadius: BorderRadius.all(Radius.circular(60))
                      ),
                      child: ListTile(
                        leading: FaIcon(                          
                          color: Colors.white,
                          FontAwesomeIcons.cloud),
                        title: Text(
                          style: TextStyle(color: Colors.orangeAccent),
                          'Description',                          
                          ),
                        trailing: Text(
                          style: TextStyle(color: Colors.white),                          
                          descr),
                      ),
                    ),
          
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 7, 156, 232),
                          border: Border.all(
                            color: Color.fromARGB(255, 7, 156, 232),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(60))
                      ),
                      child: ListTile(
                        leading: FaIcon(
                            color: Colors.white,FontAwesomeIcons.temperatureHalf),
                        title: Text(
                          style: TextStyle(color: Colors.orangeAccent),
                          'Temperature',
                          // style: TextStyle(color: Colors.black),
                          ),
                        trailing: Text(
                            style: TextStyle(color: Colors.white),tempe),
                      ),
                    ),
          
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 7, 156, 232),
                          border: Border.all(
                            color: Color.fromARGB(255, 7, 156, 232),
                          ),
                        borderRadius: BorderRadius.all(Radius.circular(60))
                      ),
                      child: ListTile(
                        leading: FaIcon(
                            color: Colors.white,FontAwesomeIcons.temperatureHalf),
                        title: Text(
                          style: TextStyle(color: Colors.orangeAccent),
                          'Perceived',
                          // style: TextStyle(color: Colors.black),
                          ),
                        trailing: Text(
                            style: TextStyle(color: Colors.white),percive),
                      ),
                    ),
          
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 7, 156, 232),
                          border: Border.all(
                            color: Color.fromARGB(255, 7, 156, 232),
                          ),
                        borderRadius: BorderRadius.all(Radius.circular(60))
                      ),
                      child: ListTile(
                        leading: FaIcon(
                            color: Colors.white,FontAwesomeIcons.tachometer),
                        title: Text(
                          style: TextStyle(color: Colors.orangeAccent),
                          'Pressure',
                          // style: TextStyle(color: Colors.black),
                          ),
                        trailing: Text(
                            style: TextStyle(color: Colors.white),press),
                      ),
                    ),
          
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 7, 156, 232),
                          border: Border.all(
                            color: Color.fromARGB(255, 7, 156, 232),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(60))
                      ),
                      child: ListTile(
                        leading: FaIcon(
                            color: Colors.white,FontAwesomeIcons.tint),
                        title: Text(
                          style: TextStyle(color: Colors.orangeAccent),
                          'Humidity',
                          // style: TextStyle(color: Colors.black),
                          ),
                        trailing: Text(
                            style: TextStyle(color: Colors.white),hum),
                      ),
                    ),
                  ],
                ),
              ),
                        ),
            ),
          ),
  
        ],
        ),
    );
     
  }

  String place = '';
  String descr = '';
  String tempe = '';
  String percive = '';
  String hum = '';
  String press = '';
  String icon = '';
  double tem = 0;
  double tem1 = 0;
  double feels = 0;
  int hu = 0;
  int pre = 0;

  Future<void> _search() async {
    final response = await _dataService.getWeather(_cityTextController.text,'','');
    setState((){});


    place = response.name!;
    tem1 = response.main!.temp!;
    feels = response.main!.feelsLike!;
    feels = double.parse(((feels - 32) * 5/9).toStringAsFixed(2));
    tem = double.parse(((tem1 - 32) * 5/9).toStringAsFixed(2));
    hu = response.main!.humidity!;
    pre = response.main!.pressure!;
    descr = response.weather![0].description!;
    icon = response.weather![0].icon!;
    hum = hu.toString() + '%';
    press = pre.toString() + ' hPa';
    tempe = tem.toString() +'\u00B0'+'C';
    percive = feels.toString() +'\u00B0'+'C';
  }

}


//  child:  Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
//                       child: TextField(
//                       controller: _cityTextController,
//                       decoration: InputDecoration(
//                         labelText: 'enter city name',
//                         suffixIcon: Icon(Icons.search),
//                       ),
//                   ),
//                     ),
                        
//                     ElevatedButton(onPressed: () {
//                     _search(); 
//                     place = _cityTextController.text;
//                     }, child: Text('Search')),
//                   ]
//                   ),
