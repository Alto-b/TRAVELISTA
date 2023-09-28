import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Color.fromRGBO(96, 125, 139, 1),
          title:Text('Help')
        ),

         body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.question_mark),
            title: Text("Ask anything"),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: Text("Report an issue"),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contact us"),
            onTap: () {
              
            },
          )
        ],
      ),

    );
  }
}