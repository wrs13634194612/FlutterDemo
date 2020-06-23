import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 3.0),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return new Container(
                      child: new Icon(IconData(0xe145 + index,
                          fontFamily: 'MaterialIcons')),
                    );
                  },
                  childCount: 12,
                ),
              ),
            ),
            SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return new Text("当前位置：$index");
                }, childCount: 50),
                itemExtent: 30.0)
          ],
        ),
      ),
    );
  }
}
