import "package:demo_flutter_application/pages/model/dish.dart";
import "package:flutter/material.dart";

class ListDishes extends StatefulWidget {
  const ListDishes({Key? key}) : super(key: key);

  @override
  _ListDishesState createState() => _ListDishesState();
}

class _ListDishesState extends State<ListDishes> {

  final List<Dish> dishes = [
    Dish(
        imageURL:
            "https://firebasestorage.googleapis.com/v0/b/very-beautiful-project.appspot.com/o/Dal.png?alt=media&token=8b5c4929-1e88-4d1b-9248-a59399a71ff0",
        name: "Dal Makhani",
        price: 300,
        rating: 4.9,
        color: Colors.white),
    Dish(
        imageURL:
            "https://firebasestorage.googleapis.com/v0/b/very-beautiful-project.appspot.com/o/paneer.png?alt=media&token=ab2ca279-8352-43ef-acc1-1459df37006f",
        name: "Paneer Makhani",
        price: 260,
        rating: 3.9,
        color: Colors.blue),
    Dish(
        imageURL:
            "https://firebasestorage.googleapis.com/v0/b/very-beautiful-project.appspot.com/o/palak.png?alt=media&token=f7654ad6-e9e4-4c1d-9e1b-e084d829bd90",
        name: "Palak Makhani",
        price: 350,
        rating: 4.2,
        color: Colors.blue),
    Dish(
        imageURL:
            "https://firebasestorage.googleapis.com/v0/b/very-beautiful-project.appspot.com/o/noodle.png?alt=media&token=75909635-6233-4a95-85d8-5b39dfd24e9d",
        name: "Noodle Makhani",
        price: 450,
        rating: 4.3,
        color: Colors.white),
  ];

  bool isAscending = true;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("List of Dishes"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_circle_right),
            onPressed:(){
              Navigator.of(context).pushReplacementNamed("/beverages");
            }
          )
        ]
      ),
      body: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (context, index) {
          final dish = dishes[index];
          return GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed("/details", arguments: dish);
            },
            child: Container(
              color: dish.color,
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.network(
                    dish.imageURL, 
                    height: 64,
                    width: 64,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${dish.name}"),
                      Text("${dish.price}"),
                      Text("${dish.rating}"),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
    setState(() {
      isAscending = !isAscending;
            dishes.sort((a, b) => isAscending ? a.price.compareTo(b.price) : b.price.compareTo(a.price));
          });
  },
        child: const Icon(Icons.sort),
      ),
    );
  }
}
