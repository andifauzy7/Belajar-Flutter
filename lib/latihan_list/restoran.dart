import 'package:flutter/material.dart';
import 'package:flutter_app/latihan_list/model_menu.dart';

class Restoran extends StatefulWidget {
  @override
  _RestoranState createState() => _RestoranState();
}

class _RestoranState extends State<Restoran> {
  List<Menu> menu;

  @override
  void initState() {
    menu = getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.restaurant),
        title: Text("Daftar Menu Restoran"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (context, position) {
            return Menu.createItem(menu[position], context);
          },
        ),
      ),
    );
  }
}

getAll() {
  return [
    Menu(
        imageUrl:
            "https://img.kurio.network/3dHY6ard7On-7x7BzL6-sxY7Dgs=/400x400/filters:quality(80):format(jpeg)/https://kurio-img.kurioapps.com/20/06/19/2e528a87-44ed-4b55-ada5-fc127cb4b6fe.jpg",
        namaMenu: "Rice Bowl",
        hargaMenu: 25000),
    Menu(
        imageUrl:
            "https://img.kurio.network/YQa9DH88EA1bI0pLEwgIYvHx9z8=/400x400/filters:quality(80):format(jpeg)/https://kurio-img.kurioapps.com/20/05/01/9c0b81e4-d225-456d-a21c-a372baf2e5e6.jpeg",
        namaMenu: "Beef Kimchi Korean",
        hargaMenu: 35000),
    Menu(
        imageUrl:
            "https://img-global.cpcdn.com/recipes/e66d19c5c309f14b/400x400cq70/photo.jpg",
        namaMenu: "Rice Empal Chicken",
        hargaMenu: 70000),
    Menu(
        imageUrl:
            "https://cdn.yummy.co.id/content-images/images/20200408/KKyp9f7EnJT0zvD3JNq8xEl6oXDLZ8j2-31353836333236323339d41d8cd98f00b204e9800998ecf8427e_400x400.jpg",
        namaMenu: "Beef Yakiniku",
        hargaMenu: 30000),
    Menu(
        imageUrl:
        "https://img.kurio.network/DSXPyBfZEnZ1OOPL1scL0hLCgwA=/400x400/filters:quality(80):format(jpeg)/https://kurio-img.kurioapps.com/20/04/26/8b1bd172-6e3c-4147-b5f5-8e81119e7825.jpeg",
        namaMenu: "Fried Rice",
        hargaMenu: 15000),
    Menu(
        imageUrl:
        "https://feelgoodfoodie.net/wp-content/uploads/2018/10/Chicken-Noodle-Soup-11-400x400.jpg",
        namaMenu: "Chicken Noodle",
        hargaMenu: 13000)
  ];
}
