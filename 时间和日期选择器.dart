import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "日期时间选择器",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: new MyHomePage(
        title: "日期时间选择器",
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
  var dateTime;

  void chooseDateTime() {
    showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime.now().subtract(new Duration(days: 30)),
      lastDate: new DateTime.now().add(new Duration(days: 30)),
    ).then((DateTime date) {
      dateTime = "${date.year}-${date.month}-${date.day}";
      showTimePicker(
        context: context,
        initialTime: new TimeOfDay.now(),
      ).then((time) {
        dateTime = "$dateTime ${time.hour}:${time.minute}";
        setState(() {});
      }).catchError((errorMsg) {
        debugPrint(errorMsg.toString());
      });
    }).catchError((errorMsg) {
      debugPrint(errorMsg.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(dateTime == null ? "日期时间选择器" : dateTime),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: chooseDateTime,
        tooltip: 'Increment',
        child: Icon(Icons.edit),
      ),
    );
  }
}
