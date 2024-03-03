import "package:flutter/material.dart";
// import "package:dice_app/StyledText.dart";
// import "package:dice_app/gradient_widget.dart";
void main() {
  void rollDice() {
  }
  runApp(
     MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.green])
          ),
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('../images/dice-images/dice-1.png', width: 200, height: 200,),
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
          
        )
        ),
      ),
  );
}