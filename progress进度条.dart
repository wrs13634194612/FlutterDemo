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
  var progressValue = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LinearProgressIndicator(),
            Container(
              height: 20,
            ),
            CircularProgressIndicator(),
            Container(
              height: 20,
            ),
            LinearProgressIndicator(
              value: progressValue,
            ),
            Container(
              height: 20,
            ),
            CircularProgressIndicator(
              value: progressValue,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          progressValue += 0.1;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
