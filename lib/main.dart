import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String responseBody = '';

  void postData() async {
    try {
      var response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/"),
        body: {
          "id": "1",
          "name": "anu",
          "email": "anu@gmail.com",
        },
      );

      setState(() {
        responseBody = response.body;
      });
      
      print(response.body);
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Response Body:', style: TextStyle(fontSize: 25)),
            SizedBox(height: 10),
            Text(responseBody),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: postData,
        child: Icon(Icons.send),
      ),
    );
  }
}
