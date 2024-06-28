import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget {
const FirstScreen({ super.key });

  @override
  Widget build(BuildContext context){
    String quote = "Sun sets in the west";
    return Scaffold(
      appBar: AppBar(title:  Text("First Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).pushNamed("/second",arguments: quote);
          }, 
          child: const Text("Navigate to second screen")),
      ),
    );
  }
}