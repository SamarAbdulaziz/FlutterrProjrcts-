import 'package:flutter/material.dart';

import 'BMIScreen.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      home:  BMICalculator(),
    );
  }
}


//=====================================================================
// import 'package:flutter/material.dart';
// import 'Widgets/SimpleCounterExample.dart';
//
// void main(){
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: SimpleCounter(),
//     );
//   }
// }


//===============================================================================
// import 'package:flutter/material.dart';
// import 'package:flutter_app/WhatsApp.dart';
// import 'package:flutter_app/whatsappScreen.dart';
//
// import 'Widgets/lec12.dart';
//
//
// void main(){
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'WhatsApp',
//       home:Scaffold(
//         appBar:AppBar(),
//         body: MyScreen(),
//       ),
//     );
//   }
// }

//==============================================================================================

//
// import 'package:flutter/material.dart';
//
// import 'MessengerScreen.dart';
//
// void main(){
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title:'Messenger Screen',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(
//            'Messenger',
//          ),
//        ),
//        body: MessengerScreen(),
//      ),
//    );
//   }
// }
//=====================================================================================================================
//XO Game
// import 'package:flutter/material.dart';
// import 'Widgets/XOBoard.dart';
//
// void main(){
//   runApp(XOGame());
// }
// class XOGame extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title:'Route XO Game',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(
//            'XO Game',
//          ),
//        ),
//        body: XOBoard(),
//      ),
//    );
//   }
// }
//=====================================================================================================================
// import 'package:flutter/material.dart';
// import 'package:flutter_app/TitleTextWidget.dart';
// import 'package:flutter_app/Widgets/SimpleCounterExample.dart';
//
// import 'Widgets/Calculator.dart';
// import 'Widgets/MySimpleCounter.dart';
// import 'Widgets/NewsCategoryItems.dart';
//
// void main() {
//   runApp(MyApplication());
// }
//
// class MyApplication extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//        home:  MySimpleCounter(),
//     );
//   }
//
// }
//=====================================================================================================================
//
// home:Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'My Application',
//           ),
//         ),
//         body:Calculator(),
//       ),
//=================================================================================================
/*Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleTextWidget('News'),
                TitleTextWidget('Magazines'),
              ],
            ),
            Row(
              children:[
                NewsCategoryItems('politics','assets/images/politics.jpg'),
                NewsCategoryItems('Technology','assets/images/tecnology.jpg'),
                ],
            ),
            Row(
              children:[
                NewsCategoryItems('Sports','assets/images/sports.jpg'),
                NewsCategoryItems('Tourism','assets/images/tourism.jpg'),

              ],
            ),
            Row(
              children:[
                NewsCategoryItems('Health','assets/images/health.png'),
                NewsCategoryItems('ForHer','assets/images/forHer.jpg'),
              ],
            ),
            Row(
              children:[
                NewsCategoryItems('economy','assets/images/economy.jpg'),
                NewsCategoryItems('cars','assets/images/cars.jpg'),
              ],
            ),
            Row(
              children:[
                NewsCategoryItems('cook','assets/images/cook.jpg'),
                NewsCategoryItems('knowledge','assets/images/knowledge.jpg'),
              ],
            ),
          ],
        ),*/

//=====================================================================================================================

// import 'package:flutter/material.dart';
// import 'package:flutter_app/TitleTextWidget.dart';
// import 'package:flutter_app/Widgets/SimpleCounterExample.dart';
//
// import 'Widgets/Calculator.dart';
// import 'Widgets/MySimpleCounter.dart';
// import 'Widgets/NewsCategoryItems.dart';
//
// void main() {
//   runApp(MyApplication());
// }
//
// class MyApplication extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//        home:  MySimpleCounter(),
//     );
//   }
//
// }
//====================================================================================================================
/* home:Scaffold(
        appBar: AppBar(
          title: Text(
            'My Application',
          ),
        ),
        body:Calculator(),
      ),*/
//=====================================================================================================================

/*home:Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body:Calculator(),
      ),*/