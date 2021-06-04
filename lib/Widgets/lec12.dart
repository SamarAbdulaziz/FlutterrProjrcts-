import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
String text='';
List<String> names=[];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (newText)=>text=newText,
        ),
        ElevatedButton(onPressed:()=>showCustomDialog(context),
            child: Text(
              'Add Text',
            ),
        ),
        //type of params not necessary in itemBuilder:
        Expanded(
          child: ListView.builder(itemCount: names.length,
            itemBuilder: (context,index)=>Text(
            names[index],
              textAlign:TextAlign.center ,
          ),
          ),
        ),
      ],
    );
  }

  void showCustomDialog(BuildContext context){
    String newName=text;
    setState(() {
      names.add(text);
      text='';
    });
    showDialog(context: context,
        builder:(buildContext)=> AlertDialog(
          title: Text(
            'Alert 2',
          ),
          content: Text(
            newName,
          ),
        ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class MyScreen extends StatefulWidget {
//   @override
//   _MyScreenState createState() => _MyScreenState();
// }
//
// class _MyScreenState extends State<MyScreen> {
//   String text = '';
//
//   List<String> names=[];
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextField(
//           onChanged:(String newText) => text = newText,
//           //onTextChangedListener,
//         ),
//         ElevatedButton(
//           onPressed: () => showCustomDialog(context),
//           child: Text('Add Text'),
//         ),
//         Expanded(
//           child: ListView.builder(itemCount: names.length,
//             itemBuilder: (BuildContext context,int index)=>Text(
//             names[index],textAlign: TextAlign.center,
//               style: TextStyle(),
//           ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   void onTextChangedListener(String newText) {
//     text = newText;
//   }
//
//   void showCustomDialog(BuildContext context) {
//     setState(() {
//       names.add(text);
//     });
//     showDialog(
//       context: context,
//       builder: (buildContext) => AlertDialog(
//         title: Text(
//           'Alert',
//         ),
//         content: Text(text),
//       ),
//     );
//   }
// }
