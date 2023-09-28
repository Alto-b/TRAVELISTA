import 'package:cartel/Pages/splash.dart';
import 'package:flutter/material.dart';


const SAVE_KEY_NAME ="UserLoggedIn";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "TRAVELISTA",
      debugShowCheckedModeBanner: false,
      home:Splash(),

    );
  }
}
