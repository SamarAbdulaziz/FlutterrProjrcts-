import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/SimpleCounterExample.dart';

class MessengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       backgroundColor: Colors.white,
        titleSpacing: 20.0,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(icon:CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
                Icons.camera_alt,
              color: Colors.white,
              size: 16.0,
            ),
          ), onPressed:(){}),
          IconButton(icon:CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
                Icons.edit,
              color: Colors.white,
            ),
          ), onPressed: (){}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      10.0
                  ),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                        Icons.search
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'search',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height:100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>buildStoryItem(),
                  separatorBuilder: (context,index)=>SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context,index)=>buildChatItem(),
                  separatorBuilder: (context,index)=>SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 15)

            ],
          ),
        ),
      ),
    );
  }
 Widget buildStoryItem()=> Container(
   width: 60.0,
   child: Column(
     children: [
       Stack(
         alignment: AlignmentDirectional.bottomEnd,
         children: [
           CircleAvatar(
             radius: 30.0,
             backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
           ),
           CircleAvatar(
             radius: 9.0,
             backgroundColor: Colors.white,
           ),
           CircleAvatar(
             radius: 8.0,
             backgroundColor: Colors.red,
           ),
         ],
       ),
       SizedBox(
         height: 6.0,
       ),
       Text(
         'Samar Abdulaziz',
         maxLines: 2,
         overflow: TextOverflow.ellipsis,
       ),
     ],
   ),
 );

  Widget buildChatItem()=>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
          ),
          CircleAvatar(
            radius: 9.0,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.red,
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Samar abdulaziz mohammad Abdulaziz Aldih ',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hello there i\'m sending a messege Hello there i\'m sending a messege Hello there i\'m sending a messege ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal:5.0
                  ),
                  child: Container(
                    width: 7.0,
                    height:7.0,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Text(
                  '02.00 PM',
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}
/*SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Samar Abdulaziz',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Samar Abdulaziz',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Samar Abdulaziz',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Samar Abdulaziz',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Samar Abdulaziz',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Samar Abdulaziz',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [


                  ],
                ),
              ),
            ),*/
/*  Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Samar abdulaziz mohammad Abdulaziz Aldih ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello there i\'m sending a messege Hello there i\'m sending a messege Hello there i\'m sending a messege ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal:5.0
                                    ),
                                    child: Container(
                                      width: 7.0,
                                      height:7.0,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02.00 PM',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Samar abdulaziz mohammad Abdulaziz Aldih ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello there i\'m sending a messege Hello there i\'m sending a messege Hello there i\'m sending a messege ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal:5.0
                                    ),
                                    child: Container(
                                      width: 7.0,
                                      height:7.0,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02.00 PM',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Samar abdulaziz mohammad Abdulaziz Aldih ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello there i\'m sending a messege Hello there i\'m sending a messege Hello there i\'m sending a messege ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal:5.0
                                    ),
                                    child: Container(
                                      width: 7.0,
                                      height:7.0,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02.00 PM',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Samar abdulaziz mohammad Abdulaziz Aldih ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello there i\'m sending a messege Hello there i\'m sending a messege Hello there i\'m sending a messege ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal:5.0
                                    ),
                                    child: Container(
                                      width: 7.0,
                                      height:7.0,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02.00 PM',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Samar abdulaziz mohammad Abdulaziz Aldih ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello there i\'m sending a messege Hello there i\'m sending a messege Hello there i\'m sending a messege ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal:5.0
                                    ),
                                    child: Container(
                                      width: 7.0,
                                      height:7.0,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02.00 PM',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbNJWa196t4BHcEtf3csIy17WNNrT6BGqdA&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Samar abdulaziz mohammad Abdulaziz Aldih ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello there i\'m sending a messege Hello there i\'m sending a messege Hello there i\'m sending a messege ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal:5.0
                                    ),
                                    child: Container(
                                      width: 7.0,
                                      height:7.0,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02.00 PM',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
*/