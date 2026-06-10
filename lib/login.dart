import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/sing_up.dart';
import 'forget_password.dart';
class Login extends StatelessWidget {
 const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Image.network(
            "",
          ),
          Text("Welcome to My Day, Login to continue"),
          SizedBox(height: 20),
          Text("Email:"),
          TextFormField(
          ),
          SizedBox(height: 10),
          Text("Password:"),
          TextFormField(
            obscureText: true,
          ),
          SizedBox(height: 20),

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
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                  (route) => false,
                );
              },
              child: Text("Submit"),)
        ],
      ),
    );
  }
}