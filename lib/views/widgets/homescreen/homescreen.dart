import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get child => null;

  get body => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 50,
                  color: Colors.purple.shade700,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Gypc",
                  style: TextStyle(color: Colors.purple.shade700, fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.message_rounded),
                  iconSize: 50,
                  color: Colors.purple.shade700,
                  onPressed: () {},
                ),
              )
            ]),
      ),
    );
  }
}







/*child: IconButton(
          icon: Icon(Icons.add),
          iconSize: 50,
          color: Colors.purple, onPressed: () {  },
        ),*/