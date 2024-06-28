import "package:flutter/material.dart";

class Listquotes extends StatelessWidget {
const Listquotes({super.key});

getQuotes(){
  List<String> quotes = [
    "hello",
    "hey",
    "hi",
    "ola",
    "ciao",
    "khamma ghani",
  ];
  List<ListTile> quoteTextList = quotes
      .map((element)=> ListTile(
        leading: const Icon(Icons.arrow_circle_right, color: Colors.amber),
        title: Text(element)))
      .toList();
  return  quoteTextList;
}

  @override
  Widget build(BuildContext context){
    return Scaffold(

        appBar: AppBar(title: const Text("List of quotes")),
        body: ListView(children: getQuotes()),


    );
  }
}

//map()
//ListTile()
//Icon()---