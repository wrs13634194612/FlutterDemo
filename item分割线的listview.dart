import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "带item分割线的listview",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: new Text("带item分割线的listview"),
        ),
        body: new ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return new Text("当前位置：$index");
          },
          separatorBuilder: (BuildContext context, int index) {
            return new Divider(color: Colors.black);
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
