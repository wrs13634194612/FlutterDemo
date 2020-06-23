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
        body: new ListView.builder(
          itemCount: 10,
          itemExtent: 90,
          itemBuilder: (BuildContext context, int index) {
            return new Text("当前位置：$index");
          },
        ),
      ),
    );
  }
}
