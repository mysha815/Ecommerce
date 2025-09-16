import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart (${cart.itemCount})"),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          final item = cart.items[index];
          return Card(
            child: ListTile(
              leading: Image.asset(item.image, height: 50, width: 50),
              title: Text(item.title),
              subtitle: Text(item.price),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () => cart.removeItem(index),
              ),
            ),
          );
        },
      ),
    );
  }
}
