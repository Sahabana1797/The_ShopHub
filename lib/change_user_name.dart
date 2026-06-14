import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile.dart';
import 'auth_services.dart';

String username = "";

class ChangeUserName extends StatelessWidget {
  const ChangeUserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Name Page"),
      ),
      body: Column(
        children: [
          const Text("New User Name"),

          TextFormField(
            onChanged: (value) {
              username = value;
            },
          ),

          ElevatedButton(
            onPressed: () async {
              try {
                await authServices.value.updateUsername(
                  username: username,
                );

                await authServices.value.currentUser?.reload();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Username updated successfully"),
                  ),
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(e.toString()),
                  ),
                );
              }
            },
            child: Text("Update"),
          ),
        ],
      ),
    );
  }
}