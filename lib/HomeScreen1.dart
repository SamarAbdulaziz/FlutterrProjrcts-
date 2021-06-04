import 'package:flutter/material.dart';

import 'Stacky.dart';
import 'TitleText.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       backgroundColor: Colors.deepPurple,
       leading: Icon(
         Icons.menu
       ),
       title: Text(
         'Study App',
         style: TextStyle(
           color: Colors.lightGreen,

         ),
       ),
       actions: [
         IconButton(icon: Icon(
           Icons.shopping_cart,
         ),
             onPressed:(){
           print('Added to Shopping Cart');
             }
         )

       ],
     ),
     body:Column(
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TitleText('News'),
             TitleText('Magazines'),
           ],
         ),
         Stacky('fish','asset/images/mug.jpg')

       ],
     ),

   );
  }

}

// class HomeScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          'Study App',
//          style: TextStyle(
//            color: Colors.teal,
//
//          ),
//        ),
//      ),
//    );
//   }
//
// }