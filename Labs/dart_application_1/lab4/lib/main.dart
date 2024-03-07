import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> appTitles = ['Apple', 'Pineapple', 'Now this is the third!'];
  int appCyclerIndex = 0;

  void cycleTitle() {
    setState(() {
      appCyclerIndex = (appCyclerIndex + 1) % appTitles.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout testing';

    return MaterialApp(
      title: appTitles[appCyclerIndex],
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitles[appCyclerIndex]),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(onPressed: cycleTitle, child: const Text('Press me!')),
              const Text('Example text field', textAlign: TextAlign.left),
              const TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(hintText: 'TEXT HERE'),
              )
            ],
          ),
        ),
      ),
    );
  }
}