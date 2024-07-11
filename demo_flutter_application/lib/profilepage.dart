import 'package:demo_flutter_application/model/AppUser.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  AppUser user = AppUser.getEmptyAppUser();
  final _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              const CircleAvatar(
                radius: 50, 
                backgroundColor: Colors.blue,
                backgroundImage: ResizeImage(AssetImage("asset/personlogo.png"),
                height: 10, width: 10
                )
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Enter your name"),
                  onSaved: (value){
                    user.name = value!;
                    },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Enter your phone"),
                  onSaved: (value){
                    user.phone = value!;
                    },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Enter your email"),
                  onSaved: (value){
                    user.email = value!;
                    },
                ),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Select Gender:", textAlign: TextAlign.right,),
                    ListTile(
                      title: const Text("Male"),
                      leading: Radio<String> (
                        value: "Male",
                        groupValue: user.gender,
                        onChanged: (value){
                          setState(() {
                            user.gender = value!;
                          });
                        },),
                    ),
                    ListTile(
                      title: const Text("Female"),
                      leading: Radio<String> (
                        value: "Female",
                        groupValue: user.gender,
                        onChanged: (value){
                          setState(() {
                            user.gender = value!;
                          });
                        },),
                    ),
                  ],
                ),
                DropdownButtonFormField<String>(
                  value: user.sports,
                  items: ["${user.sports}","Cricket","Soccer","Basketball"]
                         .map((element){
                          return DropdownMenuItem(
                            value: element,
                            child: Text(element),);
                         }).toList(),
                  onChanged:(value) {
                    setState(() {
                      user.sports = value!;
                    });
                  },
                ),
                const SizedBox(height: 10),
                SwitchListTile(
                  title: const Text("Do you represent any club"),
                  value: user.representClub,
                  onChanged: (value) {
                    setState(() {
                      user.representClub = value;
                    });
                  },
                  ),    
            ],
          ),
        ),
        ),
      );
  }
}