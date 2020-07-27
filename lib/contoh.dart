import 'package:flutter/material.dart';

class Contoh extends StatefulWidget {
  @override
  _ContohState createState() => _ContohState();
}

class _ContohState extends State<Contoh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini halaman contoh"),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width, // Untuk match parent.
          padding: EdgeInsets.all(16.0), // Mengatur padding.
          //color: Colors.red,
          margin: EdgeInsets.symmetric(horizontal: 16.0), // mengatur margin.
          color: Color(0xFFb3b3b3), // Ini kalo custom color.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // Mengatur posisi dari setiap isi column berdasarkan sifat aslinya yaitu kebawah.
            crossAxisAlignment: CrossAxisAlignment.start, // Mengatur posisi dari setiap isi column yg berlawanan dari sifat aslinya. AKA kesamping
            children: <Widget>[
              Image.network("https://3.bp.blogspot.com/_x4qNIgUmXrA/S4E52D2zrwI/AAAAAAAAAr8/6PpVYi7_kw4/s280/saturnus.jpg"),
              Text("Contoh 2"),
              Text("Contoh 1"),
              TextFormField(),
              FlatButton(
                child: Icon(Icons.access_alarm, color: Colors.white), // Pada Button, jika ingin text isi Text(). Kalo icon Icon()
                color: Colors.blue, onPressed: () {  },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Contoh 3"),
                  Text("Contoh 4")
                ],
              )
        ],
        ),// mengizinkan 1 anak
        ),
      ),
    );
  }
}
