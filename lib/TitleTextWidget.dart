import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  String title;

  TitleTextWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1,),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 74, 19, 109)),
        padding: EdgeInsets.only(top: 12, bottom: 12),
          child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
/**/
}
