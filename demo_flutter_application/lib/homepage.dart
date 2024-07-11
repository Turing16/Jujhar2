import 'package:demo_flutter_application/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;

  List<Widget> widgets = [
    const Text("Home Page"),
    const Text("Turf Page"),
    const Text("Player Page"),
    const ProfilePage(),
  ];

  List<BottomNavigationBarItem> navBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(icon: Icon(Icons.sports_basketball), label: "Turf"),
    const BottomNavigationBarItem(icon: Icon(Icons.sports_handball), label: "Player"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  onItemSelected(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
getLocationOfUser() async{
  Position position = await _determinePosition();
  print("Location of user is: ${position.latitude}  ${position.longitude}");
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationOfUser();

    var result = _determinePosition();
    print("Position is: ${result}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),),
      body: Center(child: widgets[selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        items: navBarItems,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: const Color.fromARGB(255, 45, 45, 45),
        onTap: onItemSelected,
      ),
    );
  }
}