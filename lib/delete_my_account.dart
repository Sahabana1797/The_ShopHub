import "package:flutter/material.dart";
import "package:flutter_application_1/sing_up.dart";

class DeleteMyAccount extends StatelessWidget {
  const DeleteMyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Account Deleted Successfully")),
      body: Column(children: [
        SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
          }, 
          child: Text("Sing Up")),SizedBox(height: 20),
      ]),
    );
  }
}
