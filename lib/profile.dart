import 'package:flutter/material.dart';
import 'package:flutter_application_1/change_password.dart';
import 'package:flutter_application_1/change_user_name.dart';
import 'package:flutter_application_1/delete_my_account.dart';
import 'package:flutter_application_1/login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Column(
        children: [
          Card(child: ListTile(title: Text("Full Name:"))),
          Card(child: ListTile(title: Text("Email:"))),
          Card(child: ListTile(title: Text("Phone Number:"))),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false,
              );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Login()),
              // );
            },
            child: Text("Logout"),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeUserName()));
          }, 
          child: Text("Change User Name")),SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
          }, 
          child: Text("Change Password")),SizedBox(height: 20),
          
           ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => DeleteMyAccount()),
                (route) => false,
              );
            },
            child: Text("Delete My Account"),
          ),
        ],
      ),
    );
  }
}
