import 'package:flutter/material.dart';

class CalculatorTextResult extends StatelessWidget {
String text;
CalculatorTextResult(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      //textAlign: TextAlign.left,
      style: TextStyle(
        fontSize:32,

      ),
    );
  }
}
