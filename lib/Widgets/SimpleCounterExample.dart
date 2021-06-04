import 'package:flutter/material.dart';

class SimpleCounter extends StatefulWidget{
  @override
  _SimpleCounterState createState() => _SimpleCounterState();
}

class _SimpleCounterState extends State<SimpleCounter> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
   return Container(
     width: double.infinity,
     child: Column(
       children:[
         Text('counter $counter'),
         FloatingActionButton(
           onPressed:
           onCount,
           child:Icon(Icons.add ) ,
         )
       ],
     ),
   );
  }
  void onCount(){
   setState(() {
     counter++;
   });
  }
}
