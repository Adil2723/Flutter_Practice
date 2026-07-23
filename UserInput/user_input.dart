import "package:flutter/material.dart";

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  State<UserInputPage> createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  String userName = "";
  String greetingMessage = "";
  void greetUser(){
    setState(() {
      userName = myController.text;
      greetingMessage = "Hello  $userName";
    });
  }

  //Text Editing controller
  TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User Input Page',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: const Color.fromARGB(255, 90, 53, 185),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
          children: [

            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your Name",
              ),
            ),

            ElevatedButton(onPressed: greetUser, child: const Text('Tap'),)
          ],
        ),
      ),
    )
    );
  }
}
