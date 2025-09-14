import 'package:ecommerce_app/Products.dart';
import 'package:ecommerce_app/Widget/Product_details_Card.dart';
import 'package:flutter/material.dart';
import 'Images_list.dart';

class ProductDetails extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const ProductDetails(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child:
            ProductDetailsCard(image: image, title: title, price: price),
      ),
    );
  }
}
