import 'package:flutter/material.dart';

class LoginPageForm extends StatefulWidget {
  const LoginPageForm({super.key});

  @override
  _LoginPageFormState createState() => _LoginPageFormState();
}

class _LoginPageFormState extends State<LoginPageForm> {
final formkey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
  login(){
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if(formkey.currentState?.validate()?? false){
        print("Details: Email: $email | Password: $password");
        }else{
        print("Errors...");
        }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Form"),),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(key: formkey, child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const Text(
            "Welcome",
            style: TextStyle(color: Colors.blue),
          ),
          const SizedBox(height:12),
          TextFormField(
            controller: emailController,
            //decoration: InputDecoration(labelText: "Email"),
            decoration: styleTextField("Email"),
            validator: ((value) {
              if(value == null || value.isEmpty){

              }
            }
            )
          ),
          const SizedBox(height:12),
          TextFormField(
            controller: passwordController,
            //decoration: InputDecoration(labelText: "Password"),
            decoration: styleTextField("Password"),
            obscureText: true,
            // validator: (value){
            //   if(value ==null ||value.isEmpty){
            //     return "Password Cannot be Empty";
            //   }
            //   if(!value.toString())
            // },
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
      )
      ),
      ),
      
    );
  }
}