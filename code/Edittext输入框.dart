import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  GlobalKey<FormState> formGlobalkey = new GlobalKey<FormState>();
  String username;

  void save() {
    var form = formGlobalkey.currentState;
    if (form.validate()) {
      form.save();
    } else {
      form.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "Form demo",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Form demo"),
            ),
            body: new Column(children: <Widget>[
              new Form(
                key: formGlobalkey,
                child: new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "姓名",
                  ),
                  validator: (content) {
                    print(content);
                  },
                  onSaved: (content) {
                    username = content;
                  },
                ),
              ),
              new RaisedButton(child: new Text("保存"), onPressed: save)
            ])));
  }
}
