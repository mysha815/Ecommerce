import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Cart_Provider.dart';
import 'HomeScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavExample(), // এখান থেকে CartPage/ProductDetails এ navigation হবে
    );
  }
}
