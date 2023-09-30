import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  title: Text("Settings"),
  backgroundColor:Color.fromRGBO(96, 125, 139, 1),

),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notification"),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Dashboard"),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Privacy"),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About"),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}