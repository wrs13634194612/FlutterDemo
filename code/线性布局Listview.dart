import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: new Text(""),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          reverse: false,
          padding: EdgeInsets.all(5.0),
          primary: true,
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            new Container(
              color: Colors.red,
              height: 200.0,
            ),
            new Container(
              color: Colors.yellow,
              height: 200.0,
            ),
            new Container(
              color: Colors.grey,
              height: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
