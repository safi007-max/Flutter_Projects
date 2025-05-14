// Importing the Flutter material package which contains essential UI components
import 'package:flutter/material.dart';

// The main function is the entry point of every Dart app
void main () => runApp(MyApp()); // Runs the app using the MyApp widget

// Defining a stateless widget named MyApp which is the root of the app
class MyApp extends StatelessWidget {

  // Override the build method to define the UI
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Sets the title of the app
      title: 'hello world Demo Application',

      // Sets the app theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // Sets the first screen that loads when the app runs
      home: MyHomePage(title: 'My Home Page'),
    );
  }
}

// Defining another stateless widget for the home page
class MyHomePage extends StatelessWidget {

  // Constructor that takes a title and passes the key to the super class
  // ❗ BUG: 'Key key' and 'this.title' should be changed for null safety
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // A final variable to hold the title of the page
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top bar of the app
      appBar: AppBar(
        // Displaying the title passed from MyApp
        title: Text(this.title),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      // Centering the main content of the body
      body: Center(

        // A simple Text widget
        child: Text(
          'Hello world',
          style: TextStyle(
            color:Colors.red,
            fontSize: 24,
          ),
        ),


      ),
    );
  }
}
