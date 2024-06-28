import 'package:demo_flutter_application/dish-details.dart';
import 'package:demo_flutter_application/login-page-form.dart';
import 'package:demo_flutter_application/login-page.dart';
import 'package:demo_flutter_application/pages/first-screen.dart';
import 'package:demo_flutter_application/pages/fourth-screen.dart';
import 'package:demo_flutter_application/pages/list-beverages.dart';
import 'package:demo_flutter_application/pages/list-dishes.dart';
import 'package:demo_flutter_application/pages/second-screen.dart';
import 'package:demo_flutter_application/pages/splash.dart';
import 'package:demo_flutter_application/pages/third-screen.dart';
import 'package:demo_flutter_application/register-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(home:Home(),);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Menu",
      //named routing
       initialRoute: "/",
      routes: {
        "/": (context) => const Splash(),
        "/dishes": (context) => const ListDishes(),
        "/beverages": (context) => const ListBeverages(),
        "/first":(context) => const FirstScreen(),
        "/second":(context) => const SecondScreen(),
        "/third":(context) => const ThirdScreen(),
        "/fourth":(context) => FourthScreen(quoteRecieved: "hello"),
        "/details":(context) => const DishDetails(),
        "/login":(context) => const LoginPage(),
        "/register":(context) => const RegisterPage(),
        "/loginForm":(context) => const LoginPageForm()
      },
    );
 
  }

}
