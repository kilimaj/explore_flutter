import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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


  @override
  Widget build(BuildContext context) {
    // Creating user profile as example
    final String name = 'John';
    int xPos;
//    Constants is some kind of mathematical constant example speed of light
//    in contrast to final which is any variable
//    Const also does not change
    const double g = 9.8;
    double speed = 1.7;
//  bool canMove = true;
//  the bool value may not accept a string hence putting it as dynamic can assign a string value true
    dynamic canMove = true;

    xPos = 2;
    canMove = 'false';
//    This will not work since its declared as final and can only be set once
//    name = 'Kilima';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World',
            ),
          ],
        ),
      ),
    );
  }
}
