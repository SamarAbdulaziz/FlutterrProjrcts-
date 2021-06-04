import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor:Colors.black26,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 45, 54),
        leading: Icon(
          Icons.arrow_back_outlined,
        ),
        title: Row(
          children: [
            CircleAvatar(
             backgroundImage:AssetImage('assets/images/forHer.jpg') ,
            ),
            SizedBox(
             width: 15.0,
            ),
            Column(
              children: [
                Text(
                  'Samar',
                  //overflow:TextOverflow.ellipsis,
                ),
                Text(
                  '10:30 pm',
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
                  Icons.call
          ),
              onPressed: (){}
              ),
          IconButton(
              icon: Icon(
                  Icons.videocam
              ),
              onPressed: (){}
          ),
          IconButton(
              icon: Icon(
                  Icons.more_vert,
              ),
              onPressed: null
          ),
        ],
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit:BoxFit.cover,
            image: AssetImage(
              'assets/images/WhatsApp.png',
            ),
          ),
        ),
       // padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    'assets/images/forHer.jpg',
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  decoration:BoxDecoration(
                    color:Color.fromARGB(255, 35, 45, 54),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                    ),
                  ) ,
                  padding: EdgeInsets.all(10.0),//make distance between the edge of the container and its components
                  //margin: EdgeInsets.all(20.0),//make distance between the container itself and the out parts
                  margin: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Hi i\'m writing a message',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration:BoxDecoration(
                    color:Color.fromARGB(255, 5, 70, 64),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                    ),
                  ) ,
                  padding: EdgeInsets.all(10.0),//make distance between the edge of the container and its components
                  //margin: EdgeInsets.all(20.0),//make distance between the container itself and the out parts
                  margin: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Hi i\'m writing a message again',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    'assets/images/cars.jpg',
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:Color.fromARGB(255, 35, 45, 54),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      prefixIcon: Icon(
                          Icons.tag_faces,
                        color: Color.fromARGB(255, 94, 94, 95),
                      ),
                      hintText: 'Type your message',
                      suffixIcon: Icon(
                          Icons.attach_file_sharp,
                        color: Color.fromARGB(255, 94, 94, 95),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 175, 155),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        30.0,
                      ),
                    ),
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ),
              ],
            ),
          ],
        ),
      ) ,
    );
  }
}
// CircleAvatar(
//  backgroundColor: Color.fromARGB(255, 0, 175, 155),
//   radius: 25.0,
//   child: Icon(Icons.send,
//     color: Colors.white,
//   ),
// ),