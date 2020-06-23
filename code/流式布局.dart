import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: new Text(""),
        ),
        body: new Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          children: <Widget>[
            new Container(
              height: 50.0,
              width: 40.0,
              color: Colors.green,
            ),
            new Container(
              height: 50.0,
              width: 50.0,
              color: Colors.lightBlueAccent,
            ),
            new Container(
              height: 50.0,
              width: 80.0,
              color: Colors.lime,
            ),
          ],
        ),
      ),
    );
  }
}
