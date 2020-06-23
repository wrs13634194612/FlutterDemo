import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: new Text(""),
        ),
        body: new GestureDetector(
          child: new PlusNumWidget(),
        ),
      ),
    );
  }
}

class PlusNumWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PlusNumWidgetState();
  }
}

class PlusNumWidgetState extends State<PlusNumWidget> {
  int numA;
  int numB;
  int result;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return NotificationListener<CustomNotification>(
      onNotification: (notification) {
        setState(() {
          numA = notification.numA;
          numB = notification.numB;
          result = numA + numB;
        });
      },
      child: Center(
        child: Column(
          children: <Widget>[
            new Text("$numA+$numB = $result"),
            new Builder(builder: (context) {
              return new RaisedButton(
                child: Text("计算"),
                onPressed: () {
                  CustomNotification(
                          new Random().nextInt(100), new Random().nextInt(100))
                      .dispatch(context);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}

class CustomNotification extends Notification {
  int numA;
  int numB;

  CustomNotification(this.numA, this.numB);
}
