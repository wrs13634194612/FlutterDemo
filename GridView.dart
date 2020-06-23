import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "GridView",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: new Text("GridView"),
        ),
        body: new GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          children: <Widget>[
            new Icon(Icons.add),
            new Icon(Icons.arrow_upward),
            new Icon(Icons.arrow_forward),
            new Icon(Icons.arrow_downward),
            new Icon(Icons.arrow_back),
            new Icon(Icons.print),
            new Icon(Icons.home),
            new Icon(Icons.android),
          ],
        ),
      ),
    );
  }
}
