import 'package:flutter/material.dart';
//import 'package:testwid/widgets.dart';
import 'package:testwid/mywidget.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Flutter Demo',
      // home: new Texty(),
      home: new MyHomePage(),
    );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Demo'),
      ),
      body: new Center(
        child: new ListView(
            children: <Widget>[
              new Container (
                child: MyWidget(),
              ),
              new Divider(height: 2.0,),
              ListTile(
                title: Text("First"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Second"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              
            ],
          ),
      ),
    );

  }
}

