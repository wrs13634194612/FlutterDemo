flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true
  assets:
    - assets/





import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Basic Widget",
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Basic widget"),
        ),
        body: new BasicWidgetList(),
      ),
    );
  }
}

class BasicWidgetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        children: <Widget>[
          new WidgetText(),
          new WidgetButton(),
          new WidgetImage(),
          new WidgetSwitchAndCheckbox()
        ],
      ),
    );
  }
}

//文本组件
class WidgetText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Column(children: <Widget>[
      new Text(
        "文本组件" * 10,
        textAlign: TextAlign.start,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textScaleFactor: 2,
        style: TextStyle(
            color: Colors.white,
            fontSize: 7.0,
            background: new Paint()..color = Colors.blue,
            decoration: TextDecoration.underline),
      ),
      Text.rich(TextSpan(children: [
        TextSpan(
          text: "Red text",
          style: TextStyle(color: Colors.red, fontSize: 25.0),
        ),
        TextSpan(
          text: "Blue text",
          style: TextStyle(color: Colors.blue, fontSize: 25.0),
          recognizer: new TapGestureRecognizer()
            ..onTap = () {
              debugPrint("blue text clicked");
            },
        ),
      ])),
      DefaultTextStyle(
        style: TextStyle(
          color: Colors.green,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.start,
        child: Column(
          children: <Widget>[
            Text("这个文本例子，是可以向下面滑动的"),
            Text(
              "Anotuer text",
              style: TextStyle(inherit: false, color: Colors.black),
            ),
            Text(
              "My color is not green",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      )
    ]));
  }
}

//按钮组件
class WidgetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: new Center(
        child: Column(
          children: <Widget>[
            new RaisedButton(
                child: Text("RaiseButton"),
                onPressed: () => {debugPrint("RaisedButton clicked")}),
            new FlatButton(
                child: Text("flatbutton"),
                onPressed: () => {debugPrint("flatbutton clicked")}),
            new IconButton(
                icon: Icon(Icons.phone),
                onPressed: () => {debugPrint("iconbutton click")}),
            new OutlineButton(
                child: Text("outline button"),
                onPressed: () => {debugPrint("outline button click")}),
            new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                highlightColor: Colors.green,
                child: Text("Custom button"),
                onPressed: () => {debugPrint("Custom button clicked")})
          ],
        ),
      ),
    );
  }
}

//图片组件
class WidgetImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: new Column(children: <Widget>[
      new Image.asset('assets/image.png'),
      new Image.network(
          "http://img.soogif.com/IAR17MrUQMjXyKQruDWOI3ASHiWgAuTK.gif"),
      new FadeInImage.assetNetwork(
          placeholder: 'assets/image.png',
          image: "https://www.baidu.com/img/baidu_jgylogo3.gif"),
      new Icon(Icons.account_circle),
      new Icon(Icons.verified_user, color: Colors.blue),
      new Icon(Icons.android, size: 50.0)
    ]));
  }
}

//单选框和复选框
class WidgetSwitchAndCheckbox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new WidgetSwitchAndCheckboxState();
  }
}

class WidgetSwitchAndCheckboxState extends State<WidgetSwitchAndCheckbox> {
  var switchEnable = false;
  var checkboxSelected = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      new Switch(
        activeColor: Colors.green,
        value: switchEnable,
        onChanged: (value) {
          setState(() {
            switchEnable = value;
          });
        },
      ),
      new Checkbox(
          activeColor: Colors.black,
          value: checkboxSelected,
          onChanged: (value) {
            setState(() {
              checkboxSelected = value;
            });
          })
    ]);
  }
}
