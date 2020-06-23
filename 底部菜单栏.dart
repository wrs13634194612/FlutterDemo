import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(
          title: "homepahe",
        ));
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
  int _currentIndex = 0;
  List<Widget> _children;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _children = new List();
    _children.add(Text("Home"));
    _children.add(Text("List"));
    _children.add(Text("Setting"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              title: new Text("Home"),
              icon: new Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.list),
              title: new Text("List"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.settings),
              title: new Text("stting"),
            ),
          ]),
    );
  }
}
