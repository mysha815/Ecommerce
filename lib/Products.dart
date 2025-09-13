import 'package:flutter/material.dart';
import 'Images_list.dart';
import 'Widget/Products_Card.dart';
class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Oil & Ghee',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
      ),

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemCount: products.length,
          itemBuilder: (context,index){
            return ProductsCard(
                image: products[index]['image'],
                title: products[index]['title'],
                price: products[index]['price']
            );
          }
      ),

    );
  }
}


