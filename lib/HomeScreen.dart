import 'package:ecommerce_app/Cart_Page.dart';
import 'package:ecommerce_app/Categories.dart';
import 'package:flutter/material.dart';
import 'Check_Out.dart';
import 'Home.dart';

import 'Account.dart';

class BottomNavExample extends StatefulWidget {
  @override
  _BottomNavExampleState createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    CheckOut(),
    Account(),
 Categories()

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
        ],
      ),
    );
  }
}

// আলাদা আলাদা Screen

