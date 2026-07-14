import 'package:flutter/material.dart';

class ProfileCardPage extends StatelessWidget {
  const ProfileCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Card"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/picture.jpeg"),
                ),

                const SizedBox(height: 15),

                const Text(
                  "Muhammad Adil Saeed",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  "AI Developer",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.code),
                      onPressed: () {},
                    ),

                    IconButton(
                      icon: const Icon(Icons.web),
                      onPressed: () {},
                    ),

                    IconButton(
                      icon: const Icon(Icons.email),
                      onPressed: () {},
                    ),

                    IconButton(
                      icon: const Icon(Icons.business_center),
                      onPressed: () {},
                    ),
                  ],
                ),

                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Followed Successfully!"),
                      ),
                    );
                  },
                  child: const Text("Follow"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
