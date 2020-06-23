import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'BARBOT : le robot pompier'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get child => null;

  @override
  void initState() {
    super.initState();
  }

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
        title: Text("Bluetooth"),
        content: Text("Connexion"),
        actions: [
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ]);

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  String _currentAddress;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.bluetooth)),
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.settings_remote)),
              ],
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.white,
            ),
            title: Text('Barbot : Le robot pompier'),
          ),
          body: TabBarView(
            children: [
              Center(
                child: SizedBox(
                  width: 150.0,
                  height: 150.0,
                  child: FloatingActionButton(
                    onPressed: null,
                    child: Center(
                      child: Text(
                        "Connection Bluetooth",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(children: [
                      Card(
                        //color: Colors.red,
                        child: Container(
                          width: 170,
                          height: 200,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    padding: new EdgeInsets.all(15.0),
                                    height: 110.0,
                                    child:
                                        Image.asset('assets/safe.png')),
                                Text("Alerte Feu",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                    )),
                              ]),
                        ),
                      ),
                      Card(
                        //color: Colors.red,
                        child: Container(
                          width: 170,
                          height: 200,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    padding: new EdgeInsets.all(15.0),
                                    height: 110.0,
                                    child: Image.asset('assets/eau.png')),
                                Text("Réservoir",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                    )),
                              ]),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Card(
                        //color: Colors.red,
                        child: Container(
                          width: 170,
                          height: 200,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    padding: new EdgeInsets.all(15.0),
                                    height: 110.0,
                                    child:
                                        Image.asset('assets/temp.png')),
                                Text("Température",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                    )),
                              ]),
                        ),
                      ),
                      Card(
                        //color: Colors.red,
                        child: Container(
                          width: 170,
                          height: 200,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("Localisation",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                    )),
                                FlatButton(
                                  child: Container(
                                      padding: new EdgeInsets.all(15.0),
                                      height: 110.0,
                                      child:
                                          Image.asset('assets/gps.png')),
                                  onPressed: null,
                                ),
                              ]),
                        ),
                      ),
                    ]),
                  ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "CONTROLE LANCE",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                      color: Colors.lightBlue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: null,
                                child: Center(child: Icon(Icons.arrow_back)),
                                backgroundColor: Colors.red,
                                focusColor: Colors.black26,
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FloatingActionButton(
                                  onPressed: null,
                                  child:
                                      Center(child: Icon(Icons.arrow_upward)),
                                  backgroundColor: Colors.blueGrey,
                                  focusColor: Colors.black26,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FloatingActionButton(
                                  onPressed: null,
                                  child:
                                      Center(child: Icon(Icons.arrow_downward)),
                                  backgroundColor: Colors.blueGrey,
                                  focusColor: Colors.black26,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: null,
                                child: Center(child: Icon(Icons.arrow_forward)),
                                backgroundColor: Colors.red,
                                focusColor: Colors.black26,
                              )
                            ],
                          ),
                        ],
                      )),
                  Text(
                    "CONTROLE ROBOT",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                      color: Colors.grey,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: null,
                                child: Center(child: Icon(Icons.arrow_back)),
                                backgroundColor: Colors.blueGrey,
                                focusColor: Colors.black26,
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: FloatingActionButton(
                                  onPressed: null,
                                  child:
                                      Center(child: Icon(Icons.arrow_upward)),
                                  backgroundColor: Colors.red,
                                  focusColor: Colors.black26,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FloatingActionButton(
                                  onPressed: null,
                                  child:
                                      Center(child: Icon(Icons.arrow_downward)),
                                  backgroundColor: Colors.red,
                                  focusColor: Colors.black26,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: null,
                                child: Center(child: Icon(Icons.arrow_forward)),
                                backgroundColor: Colors.blueGrey,
                                focusColor: Colors.black26,
                              )
                            ],
                          ),
                        ],
                      )),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: null,
                          child: Center(child: Text("EAU")),
                        ),
                        FloatingActionButton(
                          onPressed: null,
                          backgroundColor: Colors.red,
                          child: Center(
                            child: Icon(Icons.volume_up),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
