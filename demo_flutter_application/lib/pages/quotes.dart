import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  var quotes = [
    "bolo sache dirbaar di jai",
  ];
  int idx = 0;
  void nextQuote(){
    setState(() {
      idx = (idx+1) % quotes.length;
    });
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(quotes[idx],
        style: const TextStyle(fontSize: 12),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          nextQuote();
          },
          child: const Icon(Icons.skip_next)
        ),
    );
  }
}