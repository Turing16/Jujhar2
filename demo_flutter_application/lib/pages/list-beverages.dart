import 'package:demo_flutter_application/pages/model/beverage.dart';
import 'package:flutter/material.dart';

class ListBeverages extends StatefulWidget {
  const ListBeverages({ Key? key }) : super(key: key);

  @override
  _ListBeveragesState createState() => _ListBeveragesState();
}

class _ListBeveragesState extends State<ListBeverages> {

  final List<Beverage> beverages = [
    Beverage(
      imageURL: "https://firebasestorage.googleapis.com/v0/b/very-beautiful-project.appspot.com/o/coke.png?alt=media&token=a158d575-7485-4e6c-8cbe-c6db341f47f2", 
      name: "Coke", 
      price: 50, 
      rating: 4.5, 
      color: Colors.brown),

      Beverage(
      imageURL: "https://firebasestorage.googleapis.com/v0/b/very-beautiful-project.appspot.com/o/sprite.png?alt=media&token=303d269a-1a48-4a6c-8579-0d52a99138fe", 
      name: "Sprite", 
      price: 75, 
      rating: 4.5, 
      color: Colors.white),
      Beverage(
      imageURL: "https://firebasestorage.googleapis.com/v0/b/very-beautiful-project.appspot.com/o/fanta.png?alt=media&token=03a6492c-6c6d-4407-9093-504c94ad55f5", 
      name: "Fanta", 
      price: 45, 
      rating: 4.5, 
      color: Colors.orange),
      Beverage(
      imageURL: "https://firebasestorage.googleapis.com/v0/b/very-beautiful-project.appspot.com/o/dew.png?alt=media&token=96a3a501-43a5-43ef-b10d-3cac561a888f", 
      name: "Dew", 
      price: 35, 
      rating: 4.5, 
      color: const Color.fromARGB(255, 113, 255, 118)),
  ];
   bool isAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List of Beverages"),
      leading:IconButton(
          onPressed: (){
               Navigator.of(context).pushReplacementNamed("/dishes");
          }, 
          icon: Icon(Icons.arrow_circle_left))
      ),
      body: ListView.builder(
        itemCount: beverages.length,
        itemBuilder: (context,index){
          final beverage = beverages[index];
          return Container(
            color: beverage.color,
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Image.network(beverage.imageURL, height: 64, width: 64,),
                SizedBox(width: 12),
                Column(
                  children: [
                     Text(beverage.name),
                     Text("${beverage.price}"),
                     Text("${beverage.rating}"),
                     const Divider()
                  ],
                ),
              ],
            ),
          );
        }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            setState(() {
              isAscending = !isAscending;
              beverages.sort((a, b) => isAscending ? a.price.compareTo(b.price) : b.price.compareTo(a.price));
            });
          }, 
          child: Icon(Icons.sort)
          ),
      
    );
  }
}