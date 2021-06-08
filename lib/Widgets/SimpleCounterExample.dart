import 'package:flutter/material.dart';

class SimpleCounter extends StatefulWidget{
  @override
  _SimpleCounterState createState() => _SimpleCounterState();
}

class _SimpleCounterState extends State<SimpleCounter> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       title: Text(
         'Simple counter'
       ),
     ),
       body:Container(
     width: double.infinity,
     child: Column(
       children:[
         Text(
           'counter $counter',
         style: TextStyle(
           fontSize: 25.0
         ),
         ),
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               FloatingActionButton(
                 onPressed: onAddPressed,
                 child:Icon(Icons.add ) ,
               ),
               FloatingActionButton(
                 onPressed: onMinusPressed,
               child: Icon(Icons.remove),
               ),
             ],
           ),
         ),
       ],
     ),
   )
   );
  }



  void onAddPressed(){
   setState(() {
     counter++;
   });
  }
  void onMinusPressed(){
    setState(() {
      counter--;
    });
  }
}
