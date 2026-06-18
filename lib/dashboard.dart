import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_product.dart';
import 'package:flutter_application_1/database_service.dart';
import 'package:flutter_application_1/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final DatabaseService databaseService = DatabaseService();

  Map<dynamic, dynamic> products = {};

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  Future<void> loadProducts() async {
    final snapshot = await databaseService.read(
      path: "products",
    );

    if (snapshot != null) {
      setState(() {
        products =
            Map<dynamic, dynamic>.from(snapshot.value as Map);
      });
    }
  }

  Future<void> deleteProduct(String key) async {
    await databaseService.delete(
      path: "products/$key",
    );

    loadProducts();

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Product Deleted"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,

      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "The ShopHub",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xffFF6F00),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
          ),
        ],
      ),

      body: products.isEmpty
          ? const Center(
              child: Text(
                "No Products Available",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 7,
                mainAxisSpacing: 7,
                childAspectRatio: 1.5,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                String key =
                    products.keys.elementAt(index);

                Map product = products[key];

                return Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 17,
                          backgroundColor:
                              Color(0xffFF6F00),
                          child: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          product["name"] ?? "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight:
                                FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        Text(
                          "₦${product["price"]}",
                          style: const TextStyle(
                            color: Color(0xffFF6F00),
                            fontWeight:
                                FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        Text(
                          "Qty: ${product["quantity"]}",
                        ),

                        Text(
                          product["location"] ?? "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),

                        IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () async {
                            bool? confirm =
                                await showDialog(
                              context: context,
                              builder: (context) =>
                                  AlertDialog(
                                title: const Text(
                                  "Delete Product",
                                ),
                                content: const Text(
                                  "Are you sure?",
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(
                                        context,
                                        false,
                                      );
                                    },
                                    child:
                                        const Text("No"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(
                                        context,
                                        true,
                                      );
                                    },
                                    child:
                                        const Text("Yes"),
                                  ),
                                ],
                              ),
                            );

                            if (confirm == true) {
                              deleteProduct(key);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

      floatingActionButton:
          FloatingActionButton(
        backgroundColor:
            const Color(0xffFF6F00),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const AddProductPage(),
            ),
          );

          loadProducts();
        },
      ),
    );
  }
}