import 'package:flutter/material.dart';
import 'package:weather_app1/profile.dart';
import 'package:weather_app1/weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          elevation: 0,
          title: Text('Weather App'),

          actions: [
            IconButton(
              onPressed: () {
                //do something
              },
              icon: Icon(Icons.person),
            )

          ],
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
        body: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Text('Welcome to Weather App'),
          )),
      ),
    );
  }
}

