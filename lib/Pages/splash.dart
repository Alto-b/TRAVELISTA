// ignore_for_file: use_build_context_synchronously, no_leading_underscores_for_local_identifiers

import 'package:travelista/Pages/home_page.dart';
import 'package:travelista/Pages/login_page.dart';
import 'package:travelista/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  
  void initState(){
    checkUserLoggedIn();
    super.initState();
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:Center(
         // animated start

           child: Image.network(
            'https://cdn.dribbble.com/users/722246/screenshots/4400319/media/8854b69f794471a100c85577859e9c5e.gif',
            width: 500, 
            height: 500, 
          ),


        // animated end

      )
    );

  
  }

  Future<void> gotoLogin() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement( MaterialPageRoute(builder:(ctx)=>LoginPage()));
  }

  Future<void> checkUserLoggedIn() async{
    final _sharedprefs = await SharedPreferences.getInstance();
   final  _userLoggedIn=_sharedprefs.getBool(SAVE_KEY_NAME);
  if(_userLoggedIn==null || _userLoggedIn==false){
    gotoLogin();
  }
  else{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>HomePage()));
  }
  }
}