import 'package:flutter/material.dart';
import 'empty_grocery_screen.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 5
    return Scaffold(
// 6
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
// TODO 11: Present GroceryItemScreen
        },
      ),
// 7
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {
// 1
    return Consumer<GroceryManager>(
// 2
      builder: (context, manager, child) {
// 3
        if (manager.groceryItems.isNotEmpty) {
// TODO 25: Add GroceryListScreen
          return Container();
        } else {
// 4
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
