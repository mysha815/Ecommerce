import 'package:flutter/material.dart';

class CartItem {
  final String image;
  final String title;
  final String price;

  CartItem({
    required this.image,
    required this.title,
    required this.price,
  });
}

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(String image, String title, String price) {
    _items.add(CartItem(image: image, title: title, price: price));
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  int get itemCount => _items.length;
}
