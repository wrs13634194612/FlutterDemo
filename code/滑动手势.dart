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
        body: GestureDetector(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
          ),
          onPanDown: (DragDownDetails dragDownDetails) =>
              debugPrint("手势：滑动按下：${dragDownDetails.globalPosition}"),
          onPanUpdate: (DragUpdateDetails dragDownDetails) => debugPrint(
              "手势：滑动中，当前位置：${dragDownDetails.delta.dx}-${dragDownDetails.delta.dy}"),
          onPanEnd: (DragEndDetails dragDownDetails) => debugPrint(
              "手势：滑动结束，瞬时速度：${dragDownDetails.velocity.pixelsPerSecond}"),
        ),
      ),
    );
  }
}
