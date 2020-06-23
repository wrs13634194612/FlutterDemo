import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "堆叠布局演示",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: new Text("堆叠布局演示"),
            ),
            body: Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.expand,
              children: <Widget>[
                Container(child: null, color: Colors.green),
                Positioned(
                    child: Container(child: null, color: Colors.white),
                    top: 10.0,
                    left: 10.0,
                    bottom: 10.0,
                    right: 10.0),
                Positioned(child: Icon(Icons.home)),
                Positioned(child: Text("我在顶部"), top: 0.0),
                Positioned(child: Text("我在左侧"), left: 0.0),
                Positioned(child: Text("我在底部"), bottom: 20.0),
                Positioned(child: Text("我在右侧"), right: 20.0)
              ],
            )));
  }
}
