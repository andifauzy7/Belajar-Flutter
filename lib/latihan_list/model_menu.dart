import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Menu {
  String imageUrl;
  String namaMenu;
  int hargaMenu;

  Menu({this.imageUrl, this.namaMenu, this.hargaMenu});

  static Widget createItem(Menu items, BuildContext context) {
    return InkWell(
      onLongPress: (){
        Toast.show(items.hargaMenu.toString(), context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      },
      onTap: () {
        Toast.show(items.namaMenu, context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      },
      child: Container(
        child: Card(
          margin: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage:
                  NetworkImage(items.imageUrl),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    items.namaMenu,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text("IDR " + items.hargaMenu.toString(),
                      style: TextStyle(fontSize: 16.0, color: Colors.blue))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
