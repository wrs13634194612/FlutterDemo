
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "数据库的使用",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: "Geolocator",),
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
  String locationInfo = "点击定位按钮开始定位";

  getLocation() async {
    setState(() {
      locationInfo = "正在定位\n";
    });
    Geolocator geolocator = new Geolocator();
    geolocator.forceAndroidLocationManager = true;
    Position position = await geolocator.getCurrentPosition();
    setState(() {
      locationInfo += "当前位置：${position.latitude}-${position.longitude}\n";
    });
    setState(() {
      locationInfo += "根据经纬度计算距离\n";
    });
    double _distanceInMeters = await Geolocator().distanceBetween(
        39.9077798469, 116.3912285961, 39.9177397478, 116.3970290499);
    setState(() {
      locationInfo += "天安门到故宫距离：$_distanceInMeters米";
    });
    debugPrint("当前位置：${position.latitude}-${position.longitude}");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text(""),
      ),
      body: Center(
        child: Text(locationInfo),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getLocation,
        tooltip: "获取当前位置",
        child: Icon(Icons.add_location),
      ),
    );
  }
}
