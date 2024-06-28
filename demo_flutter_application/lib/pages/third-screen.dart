import 'package:demo_flutter_application/pages/fourth-screen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
const ThirdScreen({ super.key });

  @override
  Widget build(BuildContext context){
    String quote = "Sun sets in the west";
    return Scaffold(
      appBar: AppBar(title:  Text("Third Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // Navigator.of(context).pushNamed("/second",arguments: quote);

            Navigator.of(context).push(MaterialPageRoute(
              builder:(context) => FourthScreen(quoteRecieved: quote)));
          //   Navigator.push(MaterialPageRoute(
          //     builder:(context) => FourthScreen(quote: quote)));
          }, 
          child: const Text("Navigate to fourth screen")),
      ),
    );
  }
}