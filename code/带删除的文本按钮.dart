import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "SnackBar示例",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: new MyHomePage(
        title: "SnackBar示例",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: <Widget>[
          Chip(
            label: Text("读书"),
            onDeleted: () {
              debugPrint("删除读书");
            },
          ),
          Chip(
            label: Text("电影"),
            onDeleted: (){
              debugPrint("删除电影");
            },
          ),
          Chip(
            label: Text("音乐"),
            onDeleted: (){
              debugPrint("删除音乐");
            },
          ),
        ],
      ),
    );
  }
}
