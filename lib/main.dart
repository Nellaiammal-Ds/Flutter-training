import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('media query Example'),
      ),
      body: Center(
        // Use MediaQuery to adjust widget size based on screen width
        child: Container(
         width: screenSize.width * 0.8,
         height: screenSize.height * 0.5,
        
          color: Colors.red,
          child: Center(
            child: Text(
              'Responsive Container',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}