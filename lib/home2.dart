import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app1/data_service.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  var lat = '';
  var long = '';

  void getCurrentLocation()async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lati = position.latitude;
    var longi = position.longitude;
    setState(() {
      lat = lati.toString();
      long = longi.toString();
    });
  }


  @override
  Widget build(BuildContext context) {



    // _determinePosition();
    getCurrentLocation();
     _search();
    

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
                  child: Column(
                    children: [
                      Text(
                        place,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                        ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Text(
                            tempe,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 51, 153),

                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Pacifico-Regular'
                            ),
                            ),

                          ),
                          
                          // Text(
                          //   'Latitude: $lat, Longitude: $long',
                          //   style: TextStyle(
                          //     color: Color.fromARGB(123, 155, 39, 176),
                          //     fontSize: 14.0,
                          //     fontWeight: FontWeight.w900,
                          //     fontFamily: 'Pacifico-Regular'
                          //   ),
                          //   )


                    ],
                  )
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
                    subtitle: Text(
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
                    subtitle: Text(
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
                    subtitle: Text(
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
                    subtitle: Text(
                        style: TextStyle(color: Colors.white),'52'+'\u00B0'+'C'),
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
                    subtitle: Text(
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
                    subtitle: Text(
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
  String hum = '';
  String press = '';
  double tem = 0;
  double tem1 = 0;
  int hu = 0;
  int pre = 0;

  final _dataService = DataService();

  Future<void> _search() async {
    final response = await _dataService.getWeather('',lat,long);
    setState((){});
    

    place = response.name!;
    tem1 = response.main!.temp!;
    tem = double.parse(((tem1 - 32) * 5/9).toStringAsFixed(2));
    hu = response.main!.humidity!;
    pre = response.main!.pressure!;
    descr = response.weather![0].description!;
    hum = hu.toString();
    press = pre.toString() + ' hPa';
    tempe = tem.toString() +'\u00B0'+'C';
    
  }
}
