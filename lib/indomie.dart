import "package:flutter/material.dart";

class Indomie extends StatelessWidget {
  const Indomie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("The ShopHub"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(204, 127, 92, 160),
      ),

      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                "Task 1",

                style: TextStyle(fontWeight: FontWeight(20)),
              ),

              subtitle: Text("Buy 10 Cartons and get 1 free"),

              textColor: const Color.fromARGB(255, 200, 255, 3),

              trailing: Icon(Icons.fork_left),

              tileColor: const Color.fromARGB(255, 26, 1, 248),
            ),
          ),
        ],
      ),
    );
  }
}
