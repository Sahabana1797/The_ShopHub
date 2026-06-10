import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile.dart';

class ChangeUserName extends StatelessWidget {
  const ChangeUserName({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Name Page")),
      body: Column(children: [
        Text("New User Name"),
          TextFormField(),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));}, 
          child: Text("Submuit"))
      ]),
    );
  }
}
