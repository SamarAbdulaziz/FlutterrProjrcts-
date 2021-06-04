import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsCategoryItems extends StatelessWidget{
  String title;
  String imagePath;

  NewsCategoryItems(this.title,this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Image.asset(this.imagePath,
          // height:double.infinity,
          width:double.infinity,
            fit: BoxFit.cover,
          ),
          Text(
              this.title,
              style:TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                backgroundColor: Color.fromARGB(230, 124, 36, 175),
              )
          )
        ],
      ),
    );
  }

}