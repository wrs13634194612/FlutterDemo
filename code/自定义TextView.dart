import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'hello world',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('welcome to flutter'),
        ),
        body: new Center(
          child: new GradientButtonRoute(),
        ),
      ),
    );
  }
}

class GradientButtonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          GradientButton(
            colors: [Colors.black12, Colors.black38],
            height: 50.0,
            child: Text("按钮一"),
          ),
          GradientButton(
            colors: [Colors.lime, Colors.green],
            height: 50.0,
            child: Text("按钮二"),
          ),
          GradientButton(
            colors: [Colors.lightBlueAccent, Colors.blue],
            height: 50.0,
            child: Text("按钮三"),
          )
        ],
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final List<Color> colors;
  final double width;
  final double height;
  final Widget child;
  final GestureTapCallback onTap;

  GradientButton(
      {this.colors, this.width, this.height, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ThemeData theme = Theme.of(context);

    List<Color> _colors =
        colors ?? [theme.primaryColorDark ?? theme.primaryColor];

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: _colors),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: _colors.last,
          highlightColor: Colors.transparent,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: height, width: width),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
