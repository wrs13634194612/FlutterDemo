import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: new Text(""),
        ),
        body: new GestureDetector(
          child: new Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
          ),
          onScaleStart: (details) => debugPrint("手势缩放开始：${details.toString()}"),
          onScaleUpdate: (details) => debugPrint("手势缩放中：${details.scale}"),
          onScaleEnd: (details) => debugPrint("手势缩放结束：${details.toString()}"),
        ),
      ),
    );
  }
}
