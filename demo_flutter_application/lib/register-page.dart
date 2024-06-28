import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
    TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register Page"),),
      body: Padding(padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const Text(
            "Welcome",
            style: TextStyle(color: Colors.blue),
          ),
          const SizedBox(height:12),
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: "Email"),
          ),
          const SizedBox(height:12),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(labelText: "Password"),
            obscureText: true,
          ),
          const SizedBox(height:12),

          ElevatedButton(onPressed: (){}, child: Text("Login")),

          const SizedBox(height:12),

          TextButton(
          onPressed: (){
            Navigator.of(context).pushReplacementNamed("/login");
          } , 
          child: Text("New User? Register here."))

        ],
      ),
      ),
    );
  }
}