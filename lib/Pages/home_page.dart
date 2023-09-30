import 'package:cartel/Pages/help.dart';
import 'package:cartel/Pages/login_page.dart';
import 'package:cartel/Pages/profile.dart';
import 'package:cartel/main.dart';
import 'package:flutter/material.dart';
import 'package:cartel/Pages/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var thumbClr1=Colors.black;
  var saveClr1=Color.fromARGB(255, 11, 11, 11);
  var thumbClr2=Colors.black;
  var saveClr2=Color.fromARGB(255, 11, 11, 11);
  var thumbClr3=Colors.black;
  var saveClr3=Color.fromARGB(255, 11, 11, 11);
  var thumbClr4=Colors.black;
  var saveClr4=Color.fromARGB(255, 11, 11, 11);
  var thumbClr5=Colors.black;
  var saveClr5=Color.fromARGB(255, 11, 11, 11);
  var thumbClr6=Colors.black;
  var saveClr6=Color.fromARGB(255, 11, 11, 11);
  
  //function1
  void changeClr1(){
    setState(() {
      if(thumbClr1==Colors.black){
          thumbClr1=Colors.blue;
      }
      else{
        thumbClr1=Colors.black;
      }
    });
  }
  void changeSClr1(){
setState(() {
      if(saveClr1==Colors.black){
          saveClr1=Color.fromARGB(255, 62, 237, 4);
      }
      else{
        saveClr1=Colors.black;
      }
    });
  }

  //function2

  void changeClr2(){
    setState(() {
      if(thumbClr2==Colors.black){
          thumbClr2=Colors.blue;
      }
      else{
        thumbClr2=Colors.black;
      }
    });
  }
  void changeSClr2(){
setState(() {
      if(saveClr2==Colors.black){
          saveClr2=Color.fromARGB(255, 62, 237, 4);
      }
      else{
        saveClr2=Colors.black;
      }
    });
  }

  //function3

  void changeClr3(){
    setState(() {
      if(thumbClr3==Colors.black){
          thumbClr3=Colors.blue;
      }
      else{
        thumbClr3=Colors.black;
      }
    });
  }
  void changeSClr3(){
setState(() {
      if(saveClr3==Colors.black){
          saveClr3=Color.fromARGB(255, 62, 237, 4);
      }
      else{
        saveClr3=Colors.black;
      }
    });
  }

  //function4

  void changeClr4(){
    setState(() {
      if(thumbClr4==Colors.black){
          thumbClr4=Colors.blue;
      }
      else{
        thumbClr4=Colors.black;
      }
    });
  }
  void changeSClr4(){
setState(() {
      if(saveClr4==Colors.black){
          saveClr4=Color.fromARGB(255, 62, 237, 4);
      }
      else{
        saveClr4=Colors.black;
      }
    });
  }

  //function5

  void changeClr5(){
    setState(() {
      if(thumbClr5==Colors.black){
          thumbClr5=Colors.blue;
      }
      else{
        thumbClr5=Colors.black;
      }
    });
  }
  void changeSClr5(){
setState(() {
      if(saveClr5==Colors.black){
          saveClr5=Color.fromARGB(255, 62, 237, 4);
      }
      else{
        saveClr5=Colors.black;
      }
    });
  }

  //function6

  void changeClr6(){
    setState(() {
      if(thumbClr6==Colors.black){
          thumbClr6=Colors.blue;
      }
      else{
        thumbClr6=Colors.black;
      }
    });
  }
  void changeSClr6(){
setState(() {
      if(saveClr6==Colors.black){
          saveClr6=Color.fromARGB(255, 62, 237, 4);
      }
      else{
        saveClr6=Colors.black;
      }
    });
  }
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 246, 246),
      drawer: Drawer(
        backgroundColor:Color.fromRGBO(96, 125, 139, 1),
        
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 74, 85, 90)
              ),
              accountName: Text("Alto B Puthethu"), 
              accountEmail: Text("altob282@gmail.com"),
              currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/img/profile1.webp'),
              backgroundColor: Colors.amber,
            ),
            ),

            //drawer profile
            ListTile(
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
              },
              iconColor: Colors.white,
              title: Text("Profile",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                
              
              ),              
              ),
            ),

            //drawer settings
            ListTile(
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
              },
              iconColor: Colors.white,
              title: Text("Settings",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),              
              ),
            ),
             //drawer help
            ListTile(
              leading: Icon(Icons.help),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Help()));
              },
              iconColor: Colors.white,
              title: Text("Help",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),              
              ),
            ),
            //drawer Sign out
            ListTile(
              leading: Icon(Icons.logout),
              onTap:() {
                logOutBox(context);
              },
              iconColor: Colors.white,
              title: Text("Logout",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),        
              ),
              
            )
          ],
        ),
      ),
      //appBar: AppBar(),

    //appbar
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        // leading:Icon(
        //   Icons.home,
        // ),
        title: Text("TRAVELISTA",
        style: TextStyle(fontSize:19,fontStyle: FontStyle.italic),),
        centerTitle: true,
        actions: const [
          Icon(Icons.search)
        ],
      ),


    body: ListView(
      children: [
        
        //card 1

        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:AssetImage('assets/img/profile1.webp',)),
                  trailing: IconButton(onPressed: (){},
                   icon:Icon(Icons.more_vert)),
                  
                title: Text("Alto B Puthethu"),
                subtitle: Text("just now"),
              ),
              ListTile(
                title: Text("Exploring SAHARA",),
              ),
              Image.asset('assets/img/ktm.jpg',),

          
           
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        changeClr1();
                      }, icon: Icon(Icons.thumb_up,),color: thumbClr1,),
                      IconButton( onPressed: () {
                            changeSClr1();
                          }, icon: Icon(Icons.save_alt_outlined),color: saveClr1,),
                    ],
                  )


            ],
            ),
            
            
          ),

          
        ),

        //card 2

         Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:AssetImage('assets/img/profile2.webp',)),
                  trailing: IconButton(onPressed: (){},
                   icon:Icon(Icons.more_vert)),
                  
                title: Text("Basil Benny"),
                subtitle: Text("10min ago"),
              ),
              ListTile(
                title: Text("Trekking vibes are something special",),
              ),
              Image.asset('assets/img/trek.jpg',),

          
           
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        changeClr2();
                      }, icon: Icon(Icons.thumb_up,),color: thumbClr2,),
                      IconButton( onPressed: () {
                            changeSClr2();
                          }, icon: Icon(Icons.save_alt_outlined),color: saveClr2,),
                    ],
                  )


            ],
            ),
            
            
          ),

          
        ),

        //card 3

         Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:AssetImage('assets/img/profile3.jpg',)),
                  trailing: IconButton(onPressed: (){},
                   icon:Icon(Icons.more_vert)),
                  
                title: Text("Ashwin Sajith"),
                subtitle: Text("15min ago"),
              ),
              ListTile(
                title: Text("Got hands on this BEAST",),
              ),
              Image.asset('assets/img/typer.jpg',),

          
           
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        changeClr3();
                      }, icon: Icon(Icons.thumb_up,),color: thumbClr3,),
                      IconButton( onPressed: () {
                            changeSClr3();
                          }, icon: Icon(Icons.save_alt_outlined),color: saveClr3,),
                    ],
                  )
            ],
            ),
          ),
        ),

        //CARD 4

        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:AssetImage('assets/img/profile4.jpg',)),
                  trailing: IconButton(onPressed: (){},
                   icon:Icon(Icons.more_vert)),
                  
                title: Text("Glitch"),
                subtitle: Text("1hr ago"),
              ),
              ListTile(
                title: Text("Such an absolute track machine",),
              ),
              Image.asset('assets/img/Porsche-911-GT3-RS.webp',),

          
           
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        changeClr4();
                      }, icon: Icon(Icons.thumb_up,),color: thumbClr4,),
                      IconButton( onPressed: () {
                            changeSClr4();
                          }, icon: Icon(Icons.save_alt_outlined),color: saveClr4,),
                    ],
                  )
            ],
            ),
          ),
        ),

        //CARD 5

        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:AssetImage('assets/img/DISKORT_PROFILE22.png',)),
                  trailing: IconButton(onPressed: (){},
                   icon:Icon(Icons.more_vert)),
                  
                title: Text("pANT43R"),
                subtitle: Text("1hr ago"),
              ),
              ListTile(
                title: Text("My new work",),
              ),
              Image.asset('assets/img/PAPIBAL.png',),

          
           
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        changeClr5();
                      }, icon: Icon(Icons.thumb_up,),color: thumbClr5,),
                      IconButton( onPressed: () {
                            changeSClr5();
                          }, icon: Icon(Icons.save_alt_outlined),color: saveClr5,),
                    ],
                  )
            ],
            ),
          ),
        ),

         //CARD 6

        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:AssetImage('assets/img/profile5.webp',)),
                  trailing: IconButton(onPressed: (){},
                   icon:Icon(Icons.more_vert)),
                  
                title: Text("Kannan"),
                subtitle: Text("2hr ago"),
              ),
              ListTile(
                title: Text("New logo loading ",),
              ),
              Image.asset('assets/img/kannan.jpg',),

          
           
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        changeClr6();
                      }, icon: Icon(Icons.thumb_up,),color: thumbClr6,),
                      IconButton( onPressed: () {
                            changeSClr6();
                          }, icon: Icon(Icons.save_alt_outlined),color: saveClr6,),
                    ],
                  )
            ],
            ),
          ),
        ),

      ],
    ),
     
    );
  }


  // alert box start

    void logOutBox(BuildContext context){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title:Text("Logout"),
          content: Text("Do you want to leave ?"),
          actions: [
            ElevatedButton(onPressed: (){
              signout(context);
            }, child: Text("Yes")),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("No")),
          ],
        );
      });
    }



  // alert box end




  signout(BuildContext ctx) async{

    final _sharedPrefs= await SharedPreferences.getInstance();
  await _sharedPrefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx)=>LoginPage()), (route) => false);
    _sharedPrefs.setBool(SAVE_KEY_NAME, false);
  }

  
}