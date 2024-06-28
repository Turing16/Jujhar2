import "package:flutter/material.dart";

class FourthScreen extends StatelessWidget {
  String quoteRecieved;
  FourthScreen({required this.quoteRecieved});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Fourth Screen"),),
      body: Center(child: Text(quoteRecieved)),
    );
  }
}