import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I am Rich', textAlign: TextAlign.center),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: const Center(
        child: Image(image: AssetImage('images/Diamond.jpg')),
      ),
    );
  }
}
