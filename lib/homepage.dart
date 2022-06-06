import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:weather_app1/profile.dart';
import 'package:weather_app1/weather.dart';

import 'home2.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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

        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          elevation: 4,
          title: Center(child: Text(word)),
          actions: [ 
            IconButton( onPressed: () {}, icon: const Icon(Icons.share)),],
          ),

        drawer: Drawer(
            child: Container(
              color: Colors.deepPurple[200],
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
          backgroundColor: const Color(0xFF9575CD),
          color: Colors.white,
          gap: 8,
          activeColor: Colors.white,
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