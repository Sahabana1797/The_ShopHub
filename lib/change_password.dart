import 'package:flutter/material.dart';
import 'auth_services.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});

  String currentPassword = "";
  String newPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password Changing"),
      ),
      body: Column(
        children: [
          Text("Current Password"),
          TextFormField(
            obscureText: true,
            onChanged: (value) {
              currentPassword = value;
            },
          ),

          Text("New Password"),
          TextFormField(
            obscureText: true,
            onChanged: (value) {
              newPassword = value;
            },
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () async {
              try {
                await authServices.value.resetPasswordFromCurrentPassword(
                  currentPassword: currentPassword,
                  newPassword: newPassword,
                  email: authServices.value.currentUser!.email!,
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Password updated successfully"),
                  ),
                );

                Navigator.pop(context);
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(e.toString()),
                  ),
                );
              }
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}