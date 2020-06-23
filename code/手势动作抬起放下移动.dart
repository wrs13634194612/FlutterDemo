import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: new Text(""),
        ),
        body: new Listener(
          child: new Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
          ),
          onPointerDown: (event) => debugPrint("按下：$event"),
          onPointerMove: (event) => debugPrint("移动：$event"),
          onPointerUp: (event) => debugPrint("抬起：$event"),
        ),
      ),
    );
  }
}