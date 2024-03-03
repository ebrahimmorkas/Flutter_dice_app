import "package:flutter/material.dart";

class GradientDecoration extends StatelessWidget {
  GradientDecoration(this.color1, this.color2, this.textwidget, {super.key});

  var color1;
  var color2;
  var textwidget;
  @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1, color2]
        )
      ),
      child: Center(
        child: textwidget
      ),
    );
  }
}