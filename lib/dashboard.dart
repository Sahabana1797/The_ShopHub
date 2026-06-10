import "package:flutter/material.dart";
import 'indomie.dart';
import 'profile.dart';
import 'inverter.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("The ShopHub"),
        actions: [
          GestureDetector(
            onTap: () {
           Navigator.push(context,
             MaterialPageRoute(builder:(context)=>Profile()),
             );   
            },
            child: Icon(Icons.person)),
        ],
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(204, 127, 92, 160),
      ),

      body: ListView(
        children: [
          GestureDetector(
            onTap: (){
             Navigator.push(context,
             MaterialPageRoute(builder:(context)=>Indomie()),
             );
            },
            child: Card(
              child: ListTile(
                title: Text(
                  "Indomie",
            
                  style: TextStyle(fontWeight: FontWeight(20)),
                ),
            
                subtitle: Text("Buy 10 Cartons and get 1 free"),
            
                textColor: const Color.fromARGB(255, 200, 255, 3),
            
                trailing: Icon(Icons.fork_left),
            
                tileColor: const Color.fromARGB(255, 26, 1, 248),
            
                leading: Text("1"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Milk", style: TextStyle(fontWeight: FontWeight(20))),

              subtitle: Text("Tasty and Creamy"),

              trailing: Icon(Icons.food_bank),

              tileColor: const Color.fromARGB(106, 87, 97, 82),

              leading: Text("2"),
            ),
          ),

          Card(
            child: ListTile(
              title: Text(
                "Sugar",

                style: TextStyle(fontWeight: FontWeight(20)),
              ),

              subtitle: Text("Quality and Affordable"),

              trailing: Icon(Icons.shopping_bag),

              tileColor: const Color.fromARGB(106, 87, 97, 82),

              leading: Text("3"),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Rice", style: TextStyle(fontWeight: FontWeight(20))),

              subtitle: Text("The Heart of Every Meal"),

              trailing: Icon(Icons.shopping_basket),

              tileColor: const Color.fromARGB(106, 87, 97, 82),

              leading: Text("4"),
            ),
          ),

          Card(
            child: ListTile(
              title: Text(
                "Fire Extinguisher",

                style: TextStyle(fontWeight: FontWeight(20)),
              ),

              subtitle: Text("One Year Guarantee"),

              trailing: Icon(Icons.fire_extinguisher_rounded),

              tileColor: const Color.fromARGB(106, 87, 97, 82),

              leading: Text("5"),
            ),
          ),

          GestureDetector(
            onTap: (){
             Navigator.push(context,
             MaterialPageRoute(builder:(context)=>Inverter()),
             );
            },
            child: Card(
              child: ListTile(
                title: Text(
                  "Inverter",
            
                  style: TextStyle(fontWeight: FontWeight(20)),
                ),
            
                subtitle: Text("Free Installation"),
            
                trailing: Icon(Icons.sunny),
            
                tileColor: const Color.fromARGB(106, 87, 97, 82),
            
                leading: Text("6"),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 