import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoApp(
      title: 'flutter demo',
      home: new MyHomePage(
        title: "flutter demo",
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
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: Container(
        alignment: Alignment.topCenter,
        child: Container(
          height: 300.0,
          child: CupertinoTimerPicker(
            onTimerDurationChanged: (duration) {
              debugPrint("onTimerDurationChanged:${duration.inSeconds}s");
            },
            mode: CupertinoTimerPickerMode.hms,
            initialTimerDuration: Duration(minutes: 5),
          ),
        ),
      ),
    );
  }
}
