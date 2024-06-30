

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Appui2 extends StatefulWidget {
  const Appui2({ Key? key }) : super(key: key);

  @override
  _Appui2State createState() => _Appui2State();
}

class _Appui2State extends State<Appui2> {

cardCreator(Icon iconData, String day, String title){
  return Expanded(
    child: Card(
           color: const Color.fromARGB(255, 37, 37, 36),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                      //children[0]
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            iconData,
                            SizedBox(width: 110),
                            Flexible(child: Text(day,style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 18) ,))
                          ],
                          ),
                      ),
                      //Children[1]
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Flexible(
                          child: Text(title,style: TextStyle(color: const Color.fromARGB(255, 146, 144, 144),fontSize: 18,))))
                      ] 
                    ),
                  ),
  );
}

  TextEditingController mySearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*
              
              
              First
              
              
              */
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 37, 37, 36),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children:<Widget> [
                      //------------------
                      Expanded(
                      child: TextField(
                          controller: mySearch,
                          style: TextStyle(color: Colors.grey),
                          decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search_rounded, color: 
                                        Colors.grey, size: 34),
                          suffixIcon: Icon(Icons.mic,color: 
                                        Colors.grey, size: 34),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 22,
                           ),
                          border: InputBorder.none
                      )))
                  ],
                )
              ),
              /*
              
              
              Second
              
              
              */
              const SizedBox(height: 15,),
              /*
              
              
              third
              
              
              */
              Row(
                children: [
                  cardCreator(Icon(Icons.calendar_today_rounded,color: Colors.blue,), "1", "Today"),
                  const SizedBox(width: 10),
                  cardCreator(Icon(Icons.calendar_month_rounded, color: Colors.red,), "1", "Scheduled")
                ],
              ),
              /*
              
              
              fourth
              
              
              */
              Row(
                children: [
                  cardCreator(Icon(Icons.inbox_rounded,color: Colors.grey,), "1", "All"),
                  const SizedBox(width: 10),
                  cardCreator(Icon(Icons.flag_circle_rounded, color: Colors.amber,), "0", "Flagged")
                ],
                ),
              /*
              
              
              fifth
              
              
              */
              Row(
                children: [
                  cardCreator(Icon(Icons.check_circle_rounded,color: Color.fromARGB(255, 93, 95, 93),), "", "Completed"),
                ],
                ),
              /*
              
              
              Sixth
              
              
              */
              
              const SizedBox(height: 10,),
              /*
              
              
              seventh
              
              
              */
              const Padding(
              padding: EdgeInsets.all(10),
              child: const Text("My Lists",
              style: TextStyle(color: Colors.white, fontSize: 28),)
              ),
              /*
              
              
              eigth
              
              
              */
              Padding(
                padding: EdgeInsets.all(8),
                 child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 37, 37, 36),
                    borderRadius: BorderRadius.circular(12)
                  ),
                 child: Padding(
                  padding: EdgeInsets.all(10),
                   child: Column(
                    children: [
                      Row(children: [Icon(Icons.format_list_bulleted_rounded, color: Colors.orange,),SizedBox(width:5),
                      const Text("Reminder",style: TextStyle(color: Colors.white),),SizedBox(width:230),
                      Icon(Icons.arrow_forward_ios_rounded, size: 12,color: Colors.white)],
                      ),
                      Row(children: [Icon(Icons.format_list_bulleted_rounded, color: Colors.yellow,),SizedBox(width:5),
                      const Text("Family",style: TextStyle(color: Colors.white),),SizedBox(width:250),
                      Icon(Icons.arrow_forward_ios_rounded,size: 12,color: Colors.white)],)
                    ],
                   ),
                 ),
                 ),
               ),
               SizedBox(height: 65,),
            BottomAppBar(
              color: Colors.black,
              child: Row(children: [
                const Icon(Icons.add_circle_outline_outlined, color: Colors.blue),
                SizedBox(width: 5,),
                Text("New Reminder", style: TextStyle(color: Colors.blue),),
                SizedBox(width: 150,),
                Text("Add List", style: TextStyle(color: Colors.blue),),

              ],)
            ) 
            ],
          ),
        ),
    );
  }
}