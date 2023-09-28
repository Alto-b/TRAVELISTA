// ignore_for_file: use_build_context_synchronously

import 'package:cartel/Pages/home_page.dart';
import 'package:cartel/Pages/login_page.dart';
import 'package:cartel/main.dart';
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

      body:Center(
        //child: Image.asset('assets/img/duck.gif'),
        child: Text("loading...."),
      )
    );

  
  }

  Future<void> gotoLogin() async{
    await Future.delayed(Duration(seconds: 2));
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