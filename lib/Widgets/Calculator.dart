import 'package:flutter/material.dart';
import 'CalculatorButton.dart';
import 'CalculatorResultText.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
String resultTv='';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:
              [
                Expanded(child: CalculatorTextResult(resultTv)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton('7',addDigit),
                CalculatorButton('8',addDigit),
                CalculatorButton('9',addDigit),
                CalculatorButton('+',onOperatorClick)
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              CalculatorButton('4',addDigit),
              CalculatorButton('5',addDigit),
              CalculatorButton('6',addDigit),
              CalculatorButton('-',onOperatorClick),
            ],
          ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton('1',addDigit),
                CalculatorButton('2',addDigit),
                CalculatorButton('3',addDigit),
                CalculatorButton('*',onOperatorClick),
              ],
            ),
          ),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton('.',addDigit),
                  CalculatorButton('0',addDigit),
                  CalculatorButton('=',onEqualClick),
                  CalculatorButton('/',onOperatorClick),
                ],
              ),
          ),
        ],
      ),
    );
  }
  String operator='';
  String res='';
 void onOperatorClick(String clickedOperator){
   if (operator.isEmpty){
     this.operator=clickedOperator;
     res=resultTv;
     setState(() {
       resultTv='';
     });
   }else{
    res=calculate(res,operator,resultTv);
    this.operator=clickedOperator;
    setState(() {
      resultTv='';
    });
   }

  }
  String calculate(String LHS,String operator,String RHS){
   double n1=double.parse(LHS);
   double n2=double.parse(RHS);
   double res=0.0;

   if(operator=='+'){
     res=n1+n2;
   }else if(operator=='-'){
     res=n1-n2;
   }else if(operator=='*'){
     res=n1*n2;
   }else if(operator=='/'){
     res=n1/n2;
   }
   return res.toString();

  }
  void onEqualClick(String Text){
   res=calculate(res, operator, resultTv);
   setState(() {
     resultTv=res;
     res='';
     operator='';
   });

  }

  void addDigit(String digit){
    setState(() {
      resultTv+=digit;
    });
  }
}
