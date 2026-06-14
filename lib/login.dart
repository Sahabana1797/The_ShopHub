import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/sing_up.dart';
import 'forget_password.dart';
import 'dashboard.dart';
import 'auth_services.dart';

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
            "https://idga.com.ng/wp-content/uploads/2024/09/idga-logo.png",
          ),
          Text("Welcome to The ShopHub, Login to continue"),
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
            onPressed: () async {
              try {
                await authServices.value.signIn(
                  emailAddress: email,
                  userpassword: password,
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              } on FirebaseAuthException catch (e) {
                print(e.message);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Incorrect email or password")),
                );
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
