import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class ForgetPasswordSent extends StatelessWidget {
  const ForgetPasswordSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Password reset link has been sent to your email",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
          },
                  child:Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
