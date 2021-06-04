import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Stacky extends StatelessWidget{
  String title;
  String imagePath;

  Stacky(this.title,this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // width: double.infinity,
        child: Stack(
          // alignment: AlignmentDirectional.bottomEnd,
          children: [
            Image.asset(this.imagePath,
              height:100,
              // width:double.infinity,
            ),
            Text(
                this.title,
                style:TextStyle(
                  color: Colors.white,
                  backgroundColor: Color.fromARGB(230, 124, 36, 175),
                )
            )
          ],
        ),
      ),
    );
  }

}