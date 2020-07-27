import 'package:flutter/material.dart';
import 'package:flutter_app/contoh.dart';
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var username = new TextEditingController();
  var password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue[200],
        child: Column(
          children: <Widget>[
            Image.asset("asset/user.png", width: 150.0),
            TextField(
              controller: username,
              decoration: InputDecoration(
                hintText: "Masukkan Username"
              ),
            ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Masukkan Password"
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                child: Text("Login"),
                color: Colors.blue[100], onPressed: () {
                  print("Username : ${username.text}" + "Password : ${password.text}");
                  Toast.show("Toast plugin app", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Contoh()));
              }
              ),
            )
          ],
        ),
      ),
    );
  }
}
