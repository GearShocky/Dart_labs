import 'package:flutter/material.dart';
import 'package:lab5/controllers/screen0.dart';
import 'package:lab5/controllers/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabBarController(),
    );
  }
}

class TabBarController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Screen0'),
              Tab(text: 'Screen1'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(message: 'test'),
          ],
        ),
      ),
    );
  }
}

