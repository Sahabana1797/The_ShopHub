import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Password Changing")),
      body: Column(
        children: [
          Text("Password"),
          TextFormField(),
          Text("Confirm Password"),
          TextFormField(),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));}, 
          child: Text("Submuit"))
        ],
      ),
    );
  }
}
