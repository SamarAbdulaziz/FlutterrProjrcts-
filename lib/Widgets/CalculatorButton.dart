import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalculatorButton extends StatelessWidget {
  String ButtonText;
  Function onClick;
  CalculatorButton(this.ButtonText,this.onClick);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(1),
        child: ElevatedButton(
          onPressed: (){
            onClick(ButtonText);
          },
          child: Text(
            ButtonText,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
  void onDigitClick(){

  }
}


