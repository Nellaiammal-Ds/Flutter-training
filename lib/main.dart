import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("drawer"), backgroundColor: Colors.green),
        drawer: const Drawer(
          backgroundColor: Colors.pink,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Anuantony"),
                accountEmail: Text("anu@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("AA"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("sp"),
                  )
                ],
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text("All inboxes"),
              ),
              Divider(height: 25),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("Social"),
              ),
              Divider(height: 10),
              ListTile(
                leading: Icon(Icons.outbox),
                title: Text("Outbox"),
              ),
              Divider(height: 10),
              ListTile(
                leading: Icon(Icons.drafts),
                title: Text("Drafts"),
              ),
              Divider(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
