import 'package:flutter/material.dart';
import 'package:flutter_application_1/sing_up.dart';
import 'forget_password.dart';
import 'dashboard.dart';

class Login extends StatelessWidget {
  Login({super.key});

  String email = "";
  String password = "";
  bool incorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Image.network(
           "https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da",
          ),
          Text("Welcome to My Day Application, Login to continue"),
          SizedBox(height: 20),
          Text("Email:"),
          TextFormField(
            onChanged: (value) {
              email = value;
            },
          ),
          SizedBox(height: 10),
          Text("Password:"),
          TextFormField(
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
          ),
          SizedBox(height: 20),
          Visibility(
            visible: incorrect,
            child: Text(
              "Incorrect login details",
              style: TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (email == "admin@idga.com.ng" && password == "12345678") {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                  (route) => false,
                );
              } else {
                incorrect = true;
              }
            },
            child: Text("Submit"),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgetPassword()),
              );
            },
            child: Text("Forget password"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Text("Sign up"),
          ),
        ],
      ),
    );
  }
}