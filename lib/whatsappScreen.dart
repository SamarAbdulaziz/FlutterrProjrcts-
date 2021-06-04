import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class WhatsAppScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 100, 100,100),
      appBar: AppBar(
        leading:IconButton(icon: Icon(
            Icons.arrow_back
        ),
          onPressed: (){},
        ),
        backgroundColor: Color.fromARGB(255, 35, 45, 54),
        title: Row(
          children: [
           //  CircleAvatar(
           //  radius: 15.0,
           // // backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/rose-729509__340.jpg'),
           //  ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Noor Aldih',
                ),
                Text(
                  '10:28 pm',
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(icon: Icon(
            Icons.videocam,
          ),
              onPressed: (){}),
          IconButton(icon: Icon(
            Icons.call,
          ),
              onPressed: (){}),
          IconButton(icon: Icon(
            Icons.more_vert,
          ),
              onPressed: (){})
        ],
      ),
      body:Column(
        children: [
          Row(
            children: [
              // CircleAvatar(
              //   radius: 40.0,
              //  // backgroundImage: NetworkImage('https://www.gpas-cache.ford.com/guid/0947d3c4-ae03-3c76-a2da-efe500fc20e4.png'),
              // ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 45, 54),
                  borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(20.0),
                  ),
                ),
                padding:EdgeInsets.all(10.0) ,
                margin: EdgeInsets.only(top: 50.0),
                child: Text(
                  'hello i\'m write a message',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'hello i\'m write a message',
                style: TextStyle(

                  fontSize: 18.0,
                ),
              ),
              // CircleAvatar(
              //   radius: 40.0,
              //  // backgroundImage: NetworkImage('https://www.gpas-cache.ford.com/guid/0947d3c4-ae03-3c76-a2da-efe500fc20e4.png'),
              // ),
            ],
          ),
          Spacer(),
          Expanded(
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(
                            25.0,
                        ),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.tag_faces,
                  ),
                  suffixIcon: Icon(
                    Icons.attach_file_sharp,
                   // Icons.camera_alt,
                  ),
                  hintText: 'Type a messasge',
                ),
              ),
            ),
          ),
          IconButton(icon:
          Container(

            decoration: BoxDecoration(
              color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(50.0,),
            ),
            ),
            padding: EdgeInsets.all(4),
            child: Icon(
                Icons.send,
              color: Colors.white,
            ),
          ),
          onPressed: (){}),

        ],
      ),
    );
  }
}