import "package:flutter/material.dart";

class SecondScreen extends StatelessWidget {
const SecondScreen({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context){
    String quoteRecieved = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen"),),
      body: Center(child: Text(quoteRecieved)),
    );
  }
}