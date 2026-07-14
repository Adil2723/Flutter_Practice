import 'package:flutter/material.dart';

class ProductCardPage extends StatelessWidget {
  const ProductCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Card', style: TextStyle(color: Color.fromARGB(255, 52, 3, 37))),
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      ),

      body: Center(
  child: Container(
    width: 250,
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withAlpha(128),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),

    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.fastfood, size: 80, color: Colors.orange),
        const SizedBox(height: 10),
        const Text('Delicious Burger', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        const Text('Rs. 850', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
      
      
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star_half, color: Colors.yellow),
            
          ],
        ),
      ],
    ),    
  ),
),
    );
  }
}
