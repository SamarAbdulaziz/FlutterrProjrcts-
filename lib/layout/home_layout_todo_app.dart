import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app/modules/archived/archivedTasksScreen.dart';
import 'package:flutter_app/modules/done/DoneTaskesScreen.dart';
import 'package:flutter_app/modules/taskes/newTaskesScreen.dart';
import 'package:flutter_app/shared/components/components.dart';
import 'package:sqflite/sqflite.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {

  int currentIndex = 0;
  //IconData fabIcon=Icons.edit;
  Database database;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool isBottomSheetShown = false;
  var titleController=TextEditingController();
  var timeController=TextEditingController();
  var dateController=TextEditingController();
  List<Map> tasks=[];


  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

 @override
  void initState() {
    super.initState();
    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          insertIntoDatabase();
          // if(isBottomSheetShown){
          //   if(formKey.currentState.validate())
          // {
          //   insertIntoDatabase(
          //     // title: titleController.text,
          //     // date: dateController.text,
          //     // time: timeController.text,
          //   ).then((value) {
          //     Navigator.pop(context);
          //     isBottomSheetShown=false;
          //     setState(() {
          //       //fabIcon=Icons.edit;
          //
          //     });
          //   });
          //
          // }
          // }else{
          //   scaffoldKey.currentState.showBottomSheet(
          //         (context) => Container(
          //           color:Colors.white,
          //           padding: EdgeInsets.all(20.0,),
          //           child: Form(
          //             key: formKey,
          //             child: Column(
          //               mainAxisSize: MainAxisSize.min,
          //               children: [
          //                defaultFormField(
          //                    controller: titleController,
          //                    type: TextInputType.text,
          //                    validate: (String value){
          //                      if(value.isEmpty) {
          //                     return 'title must not be empty';
          //                   }
          //                      return null;
          //                 },
          //                    label: 'Title',
          //                    prefix: Icons.title,
          //                ),
          //                 SizedBox(
          //                   height: 15.0,
          //                 ),
          //                 defaultFormField(
          //                     controller:timeController,
          //                     type: TextInputType.datetime,
          //                     onTap: (){
          //                       showTimePicker(
          //                           context: context,
          //                           initialTime: TimeOfDay.now(),
          //                       ).then((value) {
          //                         timeController.text=value.format(context).toString();
          //                         print(value.format(context));
          //                       });
          //                     },
          //                     validate: (String value){
          //                       if(value.isEmpty){
          //                         return 'time must not be empty';
          //                       }
          //                       return null;
          //                     },
          //                     label: 'Time',
          //                     prefix:Icons.watch_later_outlined
          //                 ),
          //                 SizedBox(
          //                   height: 15.0,
          //                 ),
          //                 defaultFormField(
          //                     controller:dateController,
          //                     type: TextInputType.datetime,
          //                     onTap: (){
          //                    showDatePicker(
          //                        context: context,
          //                        initialDate:DateTime.now(),
          //                        firstDate: DateTime.now(),
          //                        lastDate: DateTime.now().add(Duration(days: 365)) ,
          //                    ).then((value){
          //
          //                      dateController.text=DateFormat.yMMMd().format(value);
          //                    });
          //                     },
          //                     validate: (String value){
          //                       if(value.isEmpty){
          //                         return 'date must not be empty';
          //                       }
          //                       return null;
          //                     },
          //                     label:'Task Date',
          //                     prefix:Icons.calendar_today_outlined,
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //     elevation: 20.0
          //   ).closed.then((value) {
          //     isBottomSheetShown=false;
          //     setState(() {
          //       //fabIcon=Icons.edit;
          //
          //     });
          //   });
          //   Navigator.pop(context);
          //   isBottomSheetShown=true;
          //   setState(() {
          //    // fabIcon=Icons.add;
          //   });
          // }// insertIntoDatabase();
        },
        child:isBottomSheetShown? Icon(
          Icons.add,
        ):Icon(
          Icons.edit,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Taskes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle,
            ),
            label: 'Done Taskes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive,
            ),
            label: 'Archived',
          ),
        ],
      ),
    );
  }



  void createDatabase() async {
    database = await openDatabase('todo.db', version: 1,
        onCreate: (database, version) {
      print('database created');
      database
          .execute(
              'CREATE TABLE tasks (id INTEGER PRIMARY KEY,title TEXT,date TEXT,time TEXT,status TEXT)')
          .then((value) {
        print('table created');
      }).catchError((error) {
        print('error on creating table ${error.toString()}');
      });
    }, onOpen: (database) {
      //getDataFromDatabase(database).then((value) {
       // tasks=value;
       // print(tasks);

     // });
      print('database opened');
    });
  }

 Future insertIntoDatabase() async {
    return await database.transaction((txn)
    {
      txn.rawInsert(
              'INSERT INTO tasks(title ,date,time,status) VALUES ("first task","0222","891","new")'
      ).then((value)
      {
        print('$value inserted successfully');
      }).catchError((error)
      {
        print('error on inserting new record ${error.toString()}');
      });
      return null;
    });
//   }
// Future<List<Map>> getDataFromDatabase(database) async{
//   return await database.rawQuery('SELECT * FROM tasks');
// }
}
// void getDataFromDatabase() async{
//   List <Map> tasks =await database.rawQuery('SELECT * FROM tasks');
//   print (tasks);
//
 }