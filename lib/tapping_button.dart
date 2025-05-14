import 'package:flutter/material.dart';

// The main function is the entry point of the Flutter app
void main() => runApp(MyApp());

// MyApp is the root widget of the application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Counter App', // Title of the app
      home: MyHomePage(),       // Sets the home screen
    );
  }
}

// MyHomePage is a StatefulWidget because the UI updates when the number changes
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState(); // Creates the mutable state
}

// This class holds the mutable state for MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Initial number displayed

  // Function to increase the counter and refresh UI
  void _incrementCounter() {
    setState(() {
      _counter++; // Increase the number by 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tap to Increase Number'),
        centerTitle: true, // Center the title in the AppBar
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GestureDetector(
          onTap: _incrementCounter, // Call this function when the widget is tapped
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '$_counter', // Display the current value of the counter
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
