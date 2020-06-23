import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "缩放动画",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: new Text("缩放动画"),
        ),
        body: new SmallToBigLogo(),
      ),
    );
  }
}

class SmallToBigLogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SmallToBigLogoState();
  }
}

class SmallToBigLogoState extends State<SmallToBigLogo>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  AnimationStatus animationStatus;
  double animationValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 0, end: 150).animate(controller)
      ..addListener(() {
        setState(() {
          animationValue = animation.value;
        });
      })
      ..addStatusListener((status) {
        setState(() {
          animationStatus = status;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              controller.reset();
              controller.forward();
            },
            child: new Text("缩放变大"),
          ),
          Container(
            height: animation.value,
            width: animation.value,
            child: FlutterLogo(),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // 停止所有活动的动画
    super.dispose();
    controller.dispose();
  }
}
