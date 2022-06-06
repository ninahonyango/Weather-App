
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'profile.dart';
import 'weather.dart';


class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  int _selectedIndex = 0;

  void _navigationBottonBar(int index){
    setState((){
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 4,
        title: const Center(child: Text('Weather App')),
        actions: [
          IconButton( onPressed: () {}, icon: const Icon(Icons.share)),],
      ),

      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                    child: Text(
                      'L O G O',
                      style: TextStyle(fontSize: 35),
                    )),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.filter_drama),
                title: Text(
                  'Weather',
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => WeatherPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Profile',
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfilePage())
                  );
                },
              ),
            ],
          ),
        ),
      ),



      body: Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 50,
            ),
          )
      ),

    );


    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   // theme: ThemeData(primarySwatch: Colors.green),
    //   home: Scaffold(
    //     // appBar: AppBar(
    //     //   backgroundColor: Colors.deepPurple[300],
    //     //   elevation: 4,
    //     //   title: const Center(child: Text('Home Page')),
    //     //   actions: [IconButton(
    //     //     onPressed: () {

    //     //     },
    //     //     icon: const Icon(Icons.person)
    //     //     ),
    //     //     IconButton(
    //     //     onPressed: () {

    //     //     },
    //     //     icon: const Icon(Icons.share)
    //     //     ),
    //     //   ],
    //     // ),

    //     // drawer: Drawer(
    //     //   child: Container(
    //     //     color: Colors.deepPurple[200],
    //     //     child: ListView(
    //     //       children: [
    //     //         const DrawerHeader(
    //     //           child: ImageIcon(
    //     //             AssetImage("assets/weather2.png"),
    //     //             // color: Color(0xFF3A5A98),
    //     //             ),
    //     //         ),

    //     //         ListTile(
    //     //           leading: Icon(Icons.filter_drama),
    //     //           title: const Text(
    //     //             'Weather',
    //     //             style: TextStyle(fontSize: 20),
    //     //             ),
    //     //             onTap: () {
    //     //               Navigator.of(context).push(
    //     //                 MaterialPageRoute(builder: (context) => Weather()));
    //     //             },
    //     //         ),

    //     //         ListTile(
    //     //           leading: Icon(Icons.person),
    //     //           title: const Text(
    //     //             'Profile',
    //     //             style: TextStyle(fontSize: 20),
    //     //             ),
    //     //             onTap: () {
    //     //               Navigator.of(context).push(
    //     //                 MaterialPageRoute(builder: (context) => Profile()));
    //     //             },
    //     //         ),
    //     //       ],
    //     //     ),
    //     //   ),
    //     // ),


    //   //   bottomNavigationBar: GNav(
    //   //     selectedIndex: _selectedIndex,
    //   //     backgroundColor: Color(0xFF9575CD),
    //   //     color: Colors.white,
    //   //     gap: 8,
    //   //     activeColor: Colors.white,
    //   //     tabBackgroundColor: Color.fromARGB(255, 90, 90, 90),
    //   //     padding: EdgeInsets.all(16),

    //   //     onTabChange: _navigationBottonBar,
    //   //     tabs: [
    //   //       GButton(icon: Icons.home, text: 'Home',),
    //   //       GButton(icon: Icons.filter_drama, text: 'Weather'),
    //   //       GButton(icon: Icons.person, text: 'Profile'),
    //   //     ]
    //   //     ),
    //   // //   bottomNavigationBar: BottomNavigationBar(
    //   //   onTap: _naviagateBottomBar,
    //   //   currentIndex: _selectedIndex,
    //   //   type: BottomNavigationBarType.fixed,
    //   //   items: [
    //   //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    //   //     BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
    //   //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
    //   //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    //   //   ],
    //   // ),

    //     // body: _pages[_selectedIndex],

    //     ),

    // );
  }
}