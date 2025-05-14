import 'package:flutter/material.dart';
import 'slider.dart'; // ✅ import the slider logic

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavSlider(), // ✅ use your custom slider page here
    );
  }
}
