import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_services.dart';
import 'package:flutter_application_1/sing_up.dart';
 String password = "";
class DeleteMyAccount extends StatelessWidget {
  const DeleteMyAccount({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Delete My Account"),
      ),
      body: Column(
  children: [
    SizedBox(height: 20),
    Text("Enter your password to delete account"),

    TextFormField(
      obscureText: true,
      onChanged: (value) {
        password = value;
      },
    ),

    SizedBox(height: 20),

    ElevatedButton(
      onPressed: () async {
        try {
          await authServices.value.deleteAccount(
            email: authServices.value.currentUser!.email!,
            password: password,
          );
        
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => SignUp(),
            ),
            (route) => false,
          );
        } catch (e) {
          print(e);
        }
      },
      child: Text("Delete Account"),
    ),
  ],
),);}}