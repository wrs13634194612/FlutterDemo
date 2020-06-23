
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'listview',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('listviews of flutter')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }

  Widget _myListView(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('sun'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('click sun');
          },
        ),
        ListTile(
          title: Text('Moon'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('click moon');
          },
        ),
        ListTile(
          title: Text('Star'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('click star');
          },
        ),
      ],
    );
  }
}
