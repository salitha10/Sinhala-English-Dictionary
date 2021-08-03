import 'package:dictionary/allwords.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Dictionary());
}

class Dictionary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Text("English")),
                Tab(child: Text("Sinhala")),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              AllWords(),
              Icon(Icons.directions_transit),
            ],
          ),
          drawer: Drawer(
            elevation: 16.0,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                    title: new Text("All Inboxes"),
                    leading: new Icon(Icons.mail),
                    onTap: () {
                      print("All Inboxes");
                      Navigator.of(context).pop(); 
                    }),
                ListTile(
                    title: new Text("Primary"),
                    leading: new Icon(Icons.inbox),
                    onTap: () {
                      print("All Inboxes");
                      Navigator.pop(context);
                    }),
                ListTile(
                    title: new Text("Social"),
                    leading: new Icon(Icons.people),
                    onTap: () {
                      print("All Inboxes");
                      Navigator.pop(context);
                    }),
                ListTile(
                    title: new Text("Promotions"),
                    leading: new Icon(Icons.local_offer),
                    onTap: () {
                      print("All Inboxes");
                      Navigator.pop(context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
