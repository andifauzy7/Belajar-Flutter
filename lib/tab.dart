import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ExampleTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.print),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                  child: Text("Mobil"),
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  child: Text("Kereta"),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                  child: Text("Sepeda"),
                ),
                Tab(
                  icon: Icon(Icons.directions_bus),
                  child: Text("Bus"),
                )
              ],
            ),
            title: Text("Example Tab Apps"),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Text("Element 1"),
                  Text("Element 2"),
                  Text("Element 3"),
                  Text("Element 4")
                ],
              ),
              ListView.builder(
                itemBuilder: (context, position) {
                  return Card(
                    child: Text("Elemen 5"),
                  );
                },
                itemCount: 3,
              ),
              GridView.builder(
                itemBuilder: (context, position) {
                  return Card(
                    child: Icon(Icons.access_alarm),
                    color: Colors.blue[100],
                  );
                },
                itemCount: 7,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                    subtitle: Text('Map Subtitle'),
                    trailing: Icon(Icons.people_outline),
                    onLongPress: (){
                      Toast.show("Menekan Lama Map", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                    },
                    onTap: (){
                      Toast.show("Tap Map", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_album),
                    title: Text('Album'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
