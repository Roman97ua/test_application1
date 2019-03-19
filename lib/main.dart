import 'dart:math';
import 'package:flutter/material.dart';

Random r = new Random();
Color _color;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(text: "Hey there"),
    );
  }
}

class HomePage extends StatefulWidget {
  final String text;

  HomePage({Key key, @required this.text}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget setBackgroundColor = GestureDetector(
      onTap: () {
        setState(() {
          _color = Color.fromARGB(r.nextInt(256), r.nextInt(256), r.nextInt(256), r.nextInt(256));
        });
      },
      child: Scaffold(backgroundColor: _color),
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(child: setBackgroundColor),
          Container(child: Center(child: Text(widget.text))),
        ],
      ),
    );
  }
}
