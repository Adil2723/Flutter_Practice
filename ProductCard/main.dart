import 'package:flutter/material.dart';
import 'pages/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductCardPage(),
    );
  }
}
