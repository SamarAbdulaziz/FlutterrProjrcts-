import 'package:flutter/material.dart';
import 'package:flutter_app/shared/components/components.dart';
import 'package:flutter_app/shared/components/constants.dart';

class NewTasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
    );
    // return ListView.separated(itemBuilder: (context,index)=>buildTaskItem(tasks[index]),
    //     separatorBuilder:(context,index)=>Padding(
    //       padding: const EdgeInsetsDirectional.only(start:20.0),
    //       child: Container(
    //         width: double.infinity,
    //         height: 1.0,
    //         color: Colors.grey,
    //       ),
    //     ),
    //     itemCount: tasks.length);
  }
}
