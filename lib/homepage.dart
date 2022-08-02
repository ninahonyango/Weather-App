import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:weather_app1/profile.dart';
import 'package:weather_app1/weather.dart';
import 'package:geolocator/geolocator.dart';

import 'home2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}


  int _selectedIndex = 0;
  String word = 'Home';

  void _navigationBottonBar(int index){
    setState((){
      _selectedIndex = index;
      word = _words[index];
    });
  }

  final List<Widget> _pages = [
    homePage(),
    Weather(),
    Profile(),
    
  ];

  final List<String> _words = [
    'Home',
    'Weather',
    'Profile',
    
  ];

  @override
  Widget build(BuildContext context) {
     _determinePosition();
    
    return Scaffold(
      backgroundColor: Color(0xE7382E4E),
      resizeToAvoidBottomInset : false,
      extendBodyBehindAppBar: true,
      extendBody: true,

      appBar: AppBar(
        backgroundColor: Colors.black45,
        elevation: 0,
        title: Center(child: Text(word)),
        actions: [ 
          IconButton( 
            onPressed: () {}, 
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/Tom.webp'),
              backgroundColor: Colors.black26,
            )
          )
        ],
        ),

      drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 148, 239, 231),
            child: ListView(
              
              

              children: [
                const DrawerHeader(
                  child: ImageIcon(
                    AssetImage("assets/weather2.png"),
                    // color: Color(0xFF3A5A98),
                    ),
                ),
                

                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text(
                    'Home',
                    style: TextStyle(fontSize: 20),
                    ),
                  onTap: () {                   
                    _navigationBottonBar(0);
                    // Scaffold.of(context).closeDrawer();
                    },
                ),

                ListTile(
                  leading: const Icon(Icons.filter_drama),         
                  title: const Text(
                    'Weather',
                    style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      _navigationBottonBar(1);
                      // Scaffold.of(context).closeDrawer();
                    },
                ),

                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text(
                    'Profile',
                    style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      _navigationBottonBar(2);
                      
                    },
                ),
              ],
            ),
          ),
        ),
    
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
          color: Color.fromARGB(255, 148, 239, 231),
        gap: 8,
        activeColor: Color.fromARGB(255, 7, 156, 232),
        tabBackgroundColor: const Color.fromARGB(255, 90, 90, 90),
        padding: const EdgeInsets.all(16),   
        
        onTabChange: _navigationBottonBar,
        tabs: const [
          GButton(icon: Icons.home, text: 'Home',),
          GButton(icon: Icons.filter_drama, text: 'Weather'),
          GButton(icon: Icons.person, text: 'Profile'),
        ]
      ),

      body: _pages[_selectedIndex],
    

);
  }
}
