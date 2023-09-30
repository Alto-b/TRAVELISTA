// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:cartel/Pages/home_page.dart';
import 'package:cartel/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
 
 final _usernameController=TextEditingController();
 final _passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      
      //appbar
      // appBar: AppBar(
      //   leading:Icon(
      //     Icons.home,
      //   ),
      //   title: Text("CARTEL",
      //   style: TextStyle(fontSize:19),),
      //   centerTitle: true,
      //   actions: const [
      //     Icon(Icons.search)
      //   ],
      // ),
      
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
          child: Column(
            children: [
              //Image.asset('assets/img/duck.gif',height: 100,),
            Image.asset('assets/img/headerlogo.png',height: 100,),
                SizedBox(height: 50),
                //gif start
          //       Image.network(
          //   'https://cdn.dribbble.com/users/722246/screenshots/4400319/media/8854b69f794471a100c85577859e9c5e.gif',
          //   width: 100, 
          //   height: 100, 
          // ),
          //  SizedBox(height: 20),
         // gif end
           //username textfield
              TextField(
                controller: _usernameController,
                // textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  
                  ),labelStyle:TextStyle(
                    fontSize: 15,
                  ),prefixIcon: Icon(Icons.person),
                  labelText: "Username",

                  
                ),

              ),

              SizedBox(height: 20),

              //password textfield 
              TextField(
                controller: _passwordController,
                obscureText: true,
                // textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  labelStyle:TextStyle(
                    fontSize: 15,
                  ),prefixIcon: Icon(Icons.key),
                  labelText: "Password",

                ),
              ),
        //sign in button
        SizedBox(height: 20),
        ElevatedButton(
            style: ButtonStyle(elevation: MaterialStateProperty.all(6),
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 65, 65, 67)),
              
              

            ),
          onPressed: (){
            checkLogin(context);
          }, child: Text("SIGN IN")),

          //alternative sign in
          SizedBox(height: 20),
      Text("Or sign in with"),

      //signup or forgot
     Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:  [
    Padding(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())); 
        },
        child: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/img/google.png'),
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/img/facebook.png'),
        ),
      ),
    ),
  ],
),

      
        //signup button
        //SizedBox(height: 15),
        Row(
  mainAxisAlignment: MainAxisAlignment.center, 
  children: [
    //sign up button
    TextButton(
      onPressed: () {},
      child: Text("SignUp"),
    ),

    //btn seperation
    
    Text(
      "/",
      style: TextStyle(fontSize: 20), 
         ),

         //forgot password button
         
    TextButton(
      onPressed: () {},
      child: Text("Forgot password"),
    ),
  ],
)
  

            ],    
          ),

          //forgot password / signup 
        


          
            

        ),
        ),
      ),
       
    );
  }
  void checkLogin(BuildContext ctx) async{
    final _username = _usernameController.text;
    final _password = _passwordController.text;

  if(_username == "alto" && _password=="123"){
    //home
   final _sharedPrefs= await SharedPreferences.getInstance();
   await _sharedPrefs.setBool(SAVE_KEY_NAME, true);

    // ignore: use_build_context_synchronously
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx)=>HomePage()));
  }
  else{
    const errorMesasage='Incorrect username or password';
    //snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
            
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
        margin: EdgeInsets.all(22),
        
        content: Text(errorMesasage),
        duration:Duration(seconds:2 ) ,));

    //alert


    //show text
  }
  }
}