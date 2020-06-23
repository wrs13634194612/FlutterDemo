import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: new MyHomePage(
        title: "page",
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.favorite),
            onPressed: () {
              debugPrint("favorite icon pressed");
            },
            color: Colors.yellow,
          ),
          new IconButton(
            icon: new Icon(Icons.delete),
            color: Colors.red,
            onPressed: () {
              debugPrint("delete icon pressed");
            },
          )
        ],
      ),
      body: Center(
        child: Text("hello world"),
      ),
    );
  }
}
