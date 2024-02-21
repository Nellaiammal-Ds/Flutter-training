import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 250,
        padding: EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: const Color.fromARGB(255, 212, 54, 244),
          elevation: 10,
          child: ListView( // Wrap with ListView
            children: [
              ListTile(
                leading: Icon(Icons.album, size: 60),
                title: Text('Anu', style: TextStyle(fontSize: 30.0)),
                subtitle: Text('Best of Anu Music.', style: TextStyle(fontSize: 18.0)),
              ),
              ButtonBar(
                children: [
                  ElevatedButton(
                    child: Text('Play'),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text('Pause'),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}