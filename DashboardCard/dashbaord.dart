import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA), // Light, clean background for the whole page
      appBar: AppBar(
        title: const Text(
          'Dashboard', 
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold
          )
        ),
        backgroundColor: const Color(0xFF1E293B), // Professional slate blue
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16), // Increased horizontal padding
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.5,
          children: [
            // Tile 1: Income
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E9), // Soft green background
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.trending_up, size: 40, color: Color(0xFF2E7D32)), // Emerald green icon
                  SizedBox(height: 10),
                  Text(
                    "Income",
                    style: TextStyle(
                      color: Color(0xFF1B5E20),
                      fontSize: 18,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Tile 2: Expenses
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFECEFF1), // Soft slate/grey background
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_balance_wallet, size: 40, color: Color(0xFF455A64)), // Slate grey icon
                  SizedBox(height: 10),
                  Text(
                    "Expenses",
                    style: TextStyle(
                      color: Color(0xFF263238),
                      fontSize: 18,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Tile 3: Profit
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF2E7D32), // High-contrast green
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.attach_money, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    "Profit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Tile 4: Loss
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFC62828), // High-contrast red
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.trending_down, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    "Loss",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
