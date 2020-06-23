import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.lime),
      home: Scaffold(
        appBar: AppBar(
          title: new Text(""),
        ),
        body: new GestureDetector(
          child: new Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.green),
          onTap: () => debugPrint("手势单击"),
          onDoubleTap: () => debugPrint("手势双击"),
          onLongPress: () => debugPrint("手势长按"),
        ),
      ),
    );
  }
}