import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SamApp',
          style:TextStyle(
            color: Colors.purple,
            fontSize: 30,
          ) ,
        ),
      ),
      body: Text(
        'News',
        style: TextStyle(
          color:Color.fromARGB(100, 14, 208, 208)
        ),
      ),

    );
  }

}