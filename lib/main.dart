
import 'package:flutter/material.dart';
 
void main() {

  runApp(MyApp());

}
 
class MyApp extends StatefulWidget {

  @override

  State<MyApp> createState() => _MyAppState();

}
 
class _MyAppState extends State<MyApp> {

  String value = 'Hai';
 
  void clickMe() {

    setState(() {

      value = "Nellai";

    });

  }
 
  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Column(children: <Widget>[

        Text('$value'),

        FloatingActionButton(

          child: Icon(Icons.add),

          onPressed: clickMe,

        )

      ]),

    );

  }

}