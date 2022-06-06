import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.deepPurple[300],
      //     elevation: 4,
      //     title: const Center(child: Text('Weather App')),
      //     actions: [ 
      //       IconButton( onPressed: () {}, icon: const Icon(Icons.share)),],
      //     ),

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
                     Text('Username'),
                     Text('Birthday'),
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
            //  painter: HeaderCurvedContainer(),
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
                     color: Colors.black,
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
                     image: AssetImage('assets/Tom.webp'),
                   ),
                 ),
               ),
             ],
           ),
           
         ],
       )
     
    );
    
  }
}