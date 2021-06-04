import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget{
  String title;
  TitleText(this.title);
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child:Container(
          margin: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
          padding: EdgeInsets.only(top:12,bottom: 12),
          color: Colors.deepPurple,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
    );

   }

}