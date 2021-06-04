import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySimpleCounter extends StatefulWidget {

  @override
  _MySimpleCounterState createState() => _MySimpleCounterState();
}


class _MySimpleCounterState extends State<MySimpleCounter> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'My Counter',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
              setState(() {
                counter--;
              });
            },
              child: Text(
                'Minus',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0
              ),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            TextButton(onPressed: () {
              setState(() {
                counter++;
              });
            },
              child: Text(
                'Plus',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}