import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  login(){
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if(email.isNotEmpty && password.isNotEmpty){
        print("Details: Email: $email | Password: $password");
        }else{
        print("Missing Details: Email: $email | Password: $password");
        }
  }

  styleTextField(String hintText){
    return InputDecoration(
      hintText: hintText, 
      contentPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.blue, width: 2)
        ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:  const BorderSide(color: Colors.orange, width: 2)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.black, width: 2)
      )
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page"),),
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
            //decoration: InputDecoration(labelText: "Email"),
            decoration: styleTextField("Email"),
          ),
          const SizedBox(height:12),
          TextField(
            controller: passwordController,
            //decoration: InputDecoration(labelText: "Password"),
            decoration: styleTextField("Password"),
            obscureText: true,
          ),
          const SizedBox(height:12),

          ElevatedButton(onPressed: (){login();}, child: Text("Login")),

          const SizedBox(height:12),

          TextButton(
          onPressed: (){
            Navigator.of(context).pushReplacementNamed("/register");
          } , 
          child: Text("New User? Register here."))

        ],
      ),
      ),
    );
  }
}
