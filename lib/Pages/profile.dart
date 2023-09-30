import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Color.fromRGBO(96, 125, 139, 1),
          title:Text('Profile')
        ),
        backgroundColor: Color.fromARGB(255, 227, 225, 225),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/img/profile1.webp',),radius: 100,backgroundColor: Colors.yellow,),
                SizedBox(height: 20,),
                Text("Name : Alto B Puthethu",
                style: TextStyle(
                    fontSize: 20,
                  )),
                  SizedBox(height: 20,),
                  Text("Gender : Male",
                style: TextStyle(
                    fontSize: 20,
                  )),
                  SizedBox(height: 20,),
                  Text("Email : altob282@gmail.com",
                style: TextStyle(
                    fontSize: 20,
                  )),
              ],
            ),
          ),

              ),

    );
  }
}