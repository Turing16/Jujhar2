import "dart:async";

import "package:demo_flutter_application/utils/util.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      print("User Details: $user");
      if (user == null) {
        print('User is currently signed out!');
        Timer(const Duration(seconds: 3), () {
          Navigator.of(context).pushReplacementNamed("/homepage");
        });
      } else {
        print('User is signed in!');
        Util.UID = user.uid;
        Timer(const Duration(seconds: 3), () {
          Navigator.of(context).pushReplacementNamed("/dishes");
        });
      }
    });
    Timer(const Duration(seconds: 2), () {
      //Navigator.of(context).push(MaterialPageRoute(
      /*Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const ListDishes(),
      ));*/

      Navigator.of(context).pushReplacementNamed("/homepage");
    });
  }
  
     
  

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/palak.png",width: 64, height: 64),

            const SizedBox(height: 20),

            const Text(
              "Palak"
            )
          ]
         )
        )
    );
  }
  }
 
