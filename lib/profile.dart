import 'package:flutter/material.dart';
import 'package:weather_app1/weather.dart';

import 'homepage.dart';

class ProfilePage extends StatelessWidget {


   Widget textfield({required String hintText}){
     return Material(
       elevation: 4,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),

          child: TextField(
         decoration: InputDecoration(
           hintText: hintText,
           hintStyle: TextStyle(
             letterSpacing: 2,
             color: Colors.black54,
             fontWeight: FontWeight.bold,

           ),
           fillColor: Colors.white30,
           filled: true,
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10.0),
             borderSide: BorderSide.none
           )
         ),
       ),
     );
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         elevation: 0.0,
         backgroundColor: Color(0xff555555),
         leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
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

         body: Stack(
         alignment: Alignment.center,
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                 height: 450,
                 width: double.infinity,
                 margin: EdgeInsets.symmetric(horizontal: 10),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                   children: [
                     SizedBox(height: 50.0,),
                     textfield(
                       hintText: 'Username',
                     ),
                     textfield(
                       hintText: 'Birthday',
                     ),
                     SizedBox(height: 30.0,),

                     Container(
                       height: 55,
                       width: double.infinity,
                     ),

 //Version
                     Text(
                       '@ version 2.0.0',
                       style: TextStyle(
                         color: Colors.grey[400],
                         fontSize: 18.0,
                         letterSpacing: 1.0,
                       ),
                     )
                   ],
                 ),
               )
             ],
           ),
           CustomPaint(
             child: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
             ),
             painter: HeaderCurvedContainer(),
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(padding: EdgeInsets.all(20),
                 child: Text(
                   "Profile",
                   style: TextStyle(
                     fontSize: 35,
                     letterSpacing: 1.5,
                     color: Colors.white,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(10.0),
                 width: MediaQuery.of(context).size.width/2,
                 height: MediaQuery.of(context).size.width/2,
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.white,width: 5),
                   shape: BoxShape.circle,
                   color: Colors.white,
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage('images/profile.png'),
                   ),
                 ),
               ),
             ],
           ),
           Padding(padding: EdgeInsets.only(bottom: 270,left: 184),
           child: CircleAvatar(
               backgroundColor: Colors.black54,
               child: IconButton(
                   icon: Icon(
                     Icons.edit,
                     color: Colors.white,
                   ),
                   onPressed: () {},
               ),
             ),
           )
         ],
       )
     );
   }
 }
 class HeaderCurvedContainer extends CustomPainter{

   @override
   void paint (Canvas canvas,Size size){
     Paint paint = Paint()..color = Color(0xff555555);
     Path path = Path()
       ..relativeLineTo(0, 150)
       ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
       ..relativeLineTo(0, -150)
       ..close();
       canvas.drawPath(path, paint);
   }
   @override
   bool shouldRepaint(CustomPainter oldDelegate)=>false;
 }