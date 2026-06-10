import 'package:flutter/material.dart';
import 'login.dart';
import 'dashboard.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign up")),
      body: Column(
        children: [
          Text(
            "Welcome to My Day, a daily planning app. Create an account to start",
          ),
          SizedBox(height: 20),
          Text("Full Name:"),
          TextFormField(),
          SizedBox(height: 10),
          Text("Email Address:"),
          TextFormField(),
          SizedBox(height: 10),
          Text("Phone Number:"),
          TextFormField(),
          SizedBox(height: 10),
          Text("Password:"),
          TextFormField(obscureText: true),
          SizedBox(height: 10),
          Text("Confirm Password"),
          TextFormField(obscureText: true),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
            child: Text("Create Account"),
          ),
          SizedBox(height: 20),
          Text("Already have an account?"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Text("Back to Login"),
          ),
        ],
      ),
    );
  }
}