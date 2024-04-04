import 'package:flutter/material.dart';
import 'package:lab5/controllers/screen1.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(message: 'This is a message from screen0!'),
              ),
            );
          },
          child: Text('Go to the next page to see a cat'),
        ),
      ),
    );
  }
}
