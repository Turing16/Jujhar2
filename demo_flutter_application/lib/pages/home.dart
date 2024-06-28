
import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context){
//     return const Scaffold(
//         body: Center(
//           child: Text('Welcome to flutter',
//           style:TextStyle(fontSize: 24)),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: null,
//           child: Icon(Icons.edit)
//           ),
//       );
//   }
// }

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text('Welcome to flutter',
          style:TextStyle(fontSize: 24)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.edit)
          ),
      );
  }
}

