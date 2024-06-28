import "dart:async";

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
    Timer(const Duration(seconds: 2), () {
      //Navigator.of(context).push(MaterialPageRoute(
      /*Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const ListDishes(),
      ));*/

      Navigator.of(context).pushReplacementNamed("/loginForm");
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
 
