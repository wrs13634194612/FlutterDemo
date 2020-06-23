import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.green),
      home: new HeroAnimationRoute(),
    );
  }
}

class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.topCenter,
      child: Scaffold(
        appBar: AppBar(
          title: new Text(""),
        ),
        body: InkWell(
          child: Hero(
            tag: "title",
            child: Image.asset(
              "assets/image.png",
              width: 80.0,
            ),
          ),
          onTap: () {
            Navigator.push(context, PageRouteBuilder(pageBuilder:
                (BuildContext context, Animation animation,
                    Animation secondarynimation) {
              return new FadeTransition(
                opacity: animation,
                child: Scaffold(
                  appBar: new AppBar(
                    title: new Text(""),
                  ),
                  body: HeroAnimationRouteB(),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(tag: "title", child: Image.asset("assets/image.png"));
  }
}
