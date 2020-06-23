import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Weight等比例分配布局",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Weight等比例分配布局"),
            ),
            body: new Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                new Expanded(
                    flex: 1,
                    child: new Container(height: 50.0, color: Colors.blue)),
                new Expanded(
                    flex: 3,
                    child: new Container(height: 50.0, color: Colors.green))
              ],
            )));
  }
}
