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

//    Variables
  // All variables not initialized hold value null
    final String name = 'John';
    int xPos;
//    Constants is some kind of mathematical constant example speed of light
//    in contrast to final which is any variable
//    Const also does not change
    const double g = 9.8;
    double speed = 1.7;
  bool canMove = true;
//  the bool value may not accept a string hence putting it as dynamic can assign a string value true
//    dynamic canMove = true;
//    canMove = 'false';
    xPos = 2;

//    This will not work since its declared as final and can only be set once
//    name = 'Kilima';

//    Variables operators
   /*
    // + - * / ~/ %
    int finalPos = xPos + 2;
    // not advised and not allowed to store a double result into an interger the result will not be correct
    // hence cast it into a double
    double finalPosition = xPos + speed;

    // Adding strings concatenates them
    String finalName = name + ' 2019';

    // ~/ divides and discards the remainder while % takes the remainder only
    print(finalPos ~/ 3);
    print(finalPos % 3);
    */

    /*
    // ++ -- depends with either its before or after the variable
    xPos++;// same as xPos = xPos + 1;
    xPos--;
    // If its before variable it does not change the value the variable changes hence its just
    // performing operation on the value and result should be stored explicitly
    int newPos = ++xPos;
    print('NewPos');
    print(newPos);
    print('xPos');
    print(xPos);
    // therefore if before the this actually returns a value that is add  1 then return results while the other adds and stores does not return
    newPos = xPos--;
    print('NewPos');
    print(newPos);
    print('xPos');
    print(xPos);
     */

    /*
    // = += -= *- /= ~/= %=
    xPos += 2; //xPos = xPos + 2;
    // Supposed to have initial value that is initialised since if not it will have value null in which
    // will bring an error during runtime
     */

    /*
    // == != > >= < <=
    bool result = speed == 1.5; // == compares does not assign
    print('Result');
    print(result);

    // ?: a simple if else statement
    xPos = canMove ? xPos + 2 : xPos;
    print(xPos);
     */

    /*
    // ! || &&
    print(!canMove);
    print(canMove || false);
    print(canMove && false);
     */


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
