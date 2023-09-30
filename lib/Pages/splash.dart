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
      backgroundColor: Colors.white,

      body:Center(
        //child: Image.asset('assets/img/duck.gif'),
        //child: Text("loading...."),

        //circular loading start
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //         CircularProgressIndicator(),
        //         Padding(padding: EdgeInsets.all(20.0),
        //         child: Text("You are about to get amused"),),
                
        //   ],
        // ),
        //circular loading end

        // gif duck start

      //  child: Image.network(
      //       'https://media.tenor.com/7zKZuIk31GEAAAAM/bird-dance.gif',
      //       width: 100, 
      //       height: 100, 
      //     ),

        // gif duck end

        // gif car start

      //  child: Image.network(
      //       'https://cdn.dribbble.com/users/722246/screenshots/4400319/media/8854b69f794471a100c85577859e9c5e.gif',
      //       width: 500, 
      //       height: 500, 
      //     ),

        // gif car end

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