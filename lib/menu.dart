import 'package:flutter/material.dart';
import 'package:flutter_app/contoh.dart';
import 'package:flutter_app/latihan_list/restoran.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/tab.dart';

class MenuButton extends StatefulWidget {
  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilihan Menu"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              RaisedButton(
                  child: Text("Eksplorasi"),
                  color: Colors.blue[100], onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Contoh()));
                  }
              ),
              RaisedButton(
                  child: Text("Tab Menu"),
                  color: Colors.blue[100], onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleTabBar()));
              }
              ),
              RaisedButton(
                  child: Text("Form Login"),
                  color: Colors.blue[100], onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              }
              ),
              RaisedButton(
                  child: Text("List Restaurant"),
                  color: Colors.blue[100], onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Restoran()));
              }
              )
            ],
          ),
        ),
      ),
    );
  }
}
