import "package:flutter/material.dart";
// import "package:dice_app/StyledText.dart";
// import "package:dice_app/gradient_widget.dart";
import "dart:math";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyDicePage(),
      ),
    );
  }
}

class MyDicePage extends StatefulWidget {
  @override
  _MyDicePageState createState() => _MyDicePageState();
}


class _MyDicePageState extends State<MyDicePage> {
  var dice_number = Random().nextInt(6) + 1;
  void rollDice() {
    setState(() {
      dice_number = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.green])
          ),
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('../images/dice-images/dice-$dice_number.png', width: 200, height: 200,),
              TextButton(
                onPressed: rollDice, 
                child: Text(
                  "Roll Dice",
                  style:TextStyle(
                    color: Colors.white70,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                  ), 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber)
              ),
              )
            ]
            ),
        );
  }
}