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

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40.0,),
            
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Tom.webp'),
                radius: 40.0,
              ),
            ),

 //divider             
            Divider(
              height: 20.0,
              color: Colors.grey[800],
            ),

//name    
            SizedBox(height: 30.0,),          
            Row(
              children: [
                Text(
                  'NAME: ',
                  style: TextStyle(
                    color: Colors.black,
                    
                    fontSize: 25.0,
                  ),
                ),
                
                Text(
                  'Tom Cruise',
                  style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

//Birthday
            const SizedBox(height: 30.0,),
            Row(
              children: [
                Text(
                  'BIRTHDAY: ',
                  style: TextStyle(
                    color: Colors.black,
                    
                    fontSize: 25.0,
                  ),
                ),
                
                Text(
                  '3rd July 1962',
                  style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2.0,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 370.0),


            Divider(
              height: 10.0,
              color: Colors.grey[800],
            ),

//Version          
            Text(
              '@ version 1.0.2',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18.0,
                letterSpacing: 1.0,
              ),
            )
          ],
        ),
      ),

    );
    
  }
}