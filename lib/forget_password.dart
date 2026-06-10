import 'package:flutter/material.dart';
import 'forget_password_sent.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password")),
      body: Column(
        children: [
          Text("Use the form below to request for password reset"),
          SizedBox(height: 20),
          Text("Email:"),
          TextFormField(),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgetPasswordSent()),
              );
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}