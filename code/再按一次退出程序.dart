import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "再按一次退出程序",
      theme: ThemeData(primarySwatch: Colors.green),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
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
        title: new Text("再按一次退出程序"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'you hava pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            WillPopScopetestRoute()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class WillPopScopetestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WillPopScopetestRouteState();
  }
}

class WillPopScopetestRouteState extends State<WillPopScopetestRoute> {
  var lastPressedTime;
  var needShow = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new WillPopScope(
      onWillPop: () {
        if (lastPressedTime == null ||
            DateTime.now().difference(lastPressedTime) > Duration(seconds: 1)) {
          lastPressedTime = DateTime.now();
          setState(() {
            needShow = true;
          });
          new Future.delayed(
              Duration(seconds: 1),
              () => setState(() {
                    needShow = false;
                  }));
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: new Text(needShow ? "再次点击返回键退出" : ""),
    );
  }
}
