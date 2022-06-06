import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'homepage.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: AnimatedSplashScreen(
        splash: Image.asset('assets/weather2.png'),
       nextScreen: HomePage(),
       splashTransition: SplashTransition.decoratedBoxTransition,
       backgroundColor: Colors.redAccent,
       
      ),
    );
    
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   // theme: ThemeData(primarySwatch: Colors.green),
    //   // home: HomePage(),
    //   home: Scaffold(
         
          

    //     bottomNavigationBar: GNav(
    //       selectedIndex: _selectedIndex,
    //       backgroundColor: Color(0xFF9575CD),
    //       color: Colors.white,
    //       gap: 8,
    //       activeColor: Colors.white,
    //       tabBackgroundColor: Color.fromARGB(255, 90, 90, 90),
    //       padding: EdgeInsets.all(16),   
          
    //       onTabChange: _navigationBottonBar,
    //       tabs: [
    //         GButton(icon: Icons.home, text: 'Home',),
    //         GButton(icon: Icons.filter_drama, text: 'Weather'),
    //         GButton(icon: Icons.person, text: 'Profile'),
    //       ]
    //     ),
    //     body: _pages[_selectedIndex],
      

    //     // body: HomePage(),
    //   ),
    // );
  }
}