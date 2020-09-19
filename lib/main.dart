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
    // Taking creating game character as example

    // 1.Variables
    //Common data types
    //int
    //double
    //bool
    //String
    //List
    //Maps
    //var
    //dynamic
    // declaring variables
    int xPos;
    // Take all variables declared not initialized hold value null
    String name = 'John'; //declare and initialise

    // Final keyword means that the variable value can not be changed in the future
    // Constants is some kind of mathematical constant example speed of light
    // in contrast to final which is any variable
    //Const also does not change

    final String userName = 'jean';
    //userName = 'Kilima'; //This cause an error since its declared as final and can only be set once
    const double g = 9.8;
    double speed = 1.7;
    bool canMove = true;
    //the bool value may not accept a string hence putting it as dynamic can assign a string value true
    dynamic jump = true; //
    jump = 'false';
    xPos = 2;


    //2. Variables operators
    // + - * / ~/ %
    int finalPos = xPos + 2;
    // not advised and not allowed to store a double result into an interger the result will not be correct
    // hence store into a double
    double finalPosition = xPos + speed;
    // Adding strings concatenates them
    String finalName = name + ' 2019';

    // ~/ divides and discards the remainder while % takes the remainder only
    print('discards remainder: ${finalPos ~/ 3}'); //print string and concatenate
    print('modulus %: ${finalPos % 3}');

    // ++ -- depends with either its before or after the variable
    xPos++;// same as xPos = xPos + 1;
    xPos--;
    // If its before variable it does not change the value the variable changes hence its just
    // performing operation on the value and result should be stored explicitly
    int newPos = ++xPos;
    print('NewPos: ${newPos}');
    print('xPos: ${xPos}');
    // therefore if it is before the variable this actually returns a reference/copy of variable plus 1
    // while the other adds and stores does not return
    newPos = xPos--;
    print('NewPos: ${newPos}');
    print('xPos: ${xPos}');

    // = += -= *- /= ~/= %=
    xPos += 2; //same as xPos = xPos + 2;
    // the variable is supposed to have initial value to avoid a runtime error
    // due to holding a value null by default null in which will conflict datatypes.

    // == != > >= < <=
    bool result = speed == 1.5; // == compares does not assign
    print('Result');
    print(result);

    // ?: a simple if else statement
    xPos = canMove ? xPos + 2 : xPos;
    print(xPos);

    // ! || &&
    print(!canMove);
    print(canMove || false);
    print(canMove && false);


    // 3. Lists
    //could either allow any data type items i.e generic variable
    //var inventory = ['food', 'knife', 'rope', 2];
    //inventory items as strings
    List<String> inventoryList = ['food', 'knife', 'rope'];
    print(inventoryList); //prints all items in list
    print(inventoryList[2]); //retrieve third item
    inventoryList = ['food', 'knife', 'rope', 'axe', 'water']; // change entire list
    inventoryList[0] = 'fruit'; //change item
    inventoryList.getRange(0, 2); // get items in index 0 and 1;
    inventoryList.setAll(0, ['milk', 'vegetables']); //changes items starting at the specified  index and changes only overlapping items
    inventoryList.forEach((element) {print(element); }); // the forEach creates a reference to the list and does not manipulate the actual list
    inventoryList.forEach((element) => print(element)); // simpler way of expressing it


    //4. Maps (Dictionary)
    // inventory of items and the number of those items
    // key = strings (item name), value = ints (number of items)
    var inventoryMaps = {
      'food': 2,
      'axe': 1,
      'shoes': 3
    };

    print(inventoryMaps);

    int axeCount = inventoryMaps['axe'];
    print(axeCount); // retrieves value from key axe

    inventoryMaps['rope'] = 1; // the key does not exist hence it creates it
    print(inventoryMaps);

    // 5. Functions
    // In dart nested functions is supported hence we will build functions within this build function
    // Function to move a character around the board

    int position = 5;
    move(int byAmount) {
      position += byAmount;
    }
    print(position);

    move(5); //move forward
    print(position);

    move(-3); //move backward
    print(position);

    // Function with a return type
    int moveIt(int initialPosition, int byAmount) {
      int finalPosition = initialPosition + byAmount;
      return finalPosition;
    }

    int globalFinalPosition = moveIt(5, 10);
    print('globalFinalPosition: ${globalFinalPosition} ');


    //6. Control Flow
    double currentPositionIf = 2;
    double endPositionIf = 10;
    double halfwayIf = endPositionIf / 2;
    String message;
    currentPositionIf = 5;
    // a. If statement
    if (currentPositionIf >= endPositionIf) {
      message = 'If statement: You have finished';
    } else if (currentPositionIf >= halfwayIf) {
      message = 'If statement: You are half way there';
    } else {
      message = 'If statement: You are on the move';
    }
    // Note Can not run if and switch statements at once Hence have to comment out one
    int currentPositionSwitch = 2;
    // b. Switch statements - in dart its restrictive just checks is a variable is equal to a value not if greater or less
    switch (currentPositionSwitch) {
      case 10:
        message = 'Switch: You have finished!';
        break;
      case 5:
        message = 'Switch: You are half way there';
        break;
      default:
        message = 'Switch: You are on move';
        break;
    }

    //Part two of control flow is loops

    //c. While loop
    int endPoint = 10;
    double currentPosition = 5;

    while(currentPosition < endPoint) {
      currentPosition++;
      print('You have ${endPoint - currentPosition} steps left');
    }
    print('You have reached the end');

    print(message);

    //continue and break
    // break ends the loop totally stops the iteration
    //Continue skips remaining code within the loop and executes the next iteration

    //d. For loop
    List<String> inventory = ['rope', 'axe', 'food', 'pants'];
    message = 'We have in our inventory: ';
    for (int i = 0; i < inventory.length; i++) {
      if (i == inventory.length - 1) {
        message += ' ' + inventory[i] + '.';
        continue;
      }
      message += ' ' + inventory[i] + ',';
    }
    print(message);

    //Note
    //Every  for loop can be converted to a while loop but not every while loop can be converted to a for loop



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
