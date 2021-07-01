import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/modules/archived/archivedTasksScreen.dart';
import 'package:flutter_app/modules/done/DoneTaskesScreen.dart';
import 'package:flutter_app/modules/taskes/newTaskesScreen.dart';
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
  bool isBottomSheetShown = false;

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
          if(isBottomSheetShown){
            Navigator.pop(context);
            isBottomSheetShown=false;
            setState(() {
              //fabIcon=Icons.edit;

            });
          }else{
            scaffoldKey.currentState.showBottomSheet(
                  (context) => Container(
                width: double.infinity,
                height: 120.0,
                color: Colors.pink,
                    child: TextFormField(
                      decoration: InputDecoration(
                       // fillColor: Colors.white,
                        labelText: 'task',
                      ),
                    ),
              ),
            );
            isBottomSheetShown=true;
            setState(() {
             // fabIcon=Icons.add;
            });
          }// insertIntoDatabase();
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

  Future<String> getName() async {
    return 'Ahmed Ali';
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
      print('database opened');
    });
  }

  void insertIntoDatabase() {
    database.transaction((txn)
    {
      txn.rawInsert(
              'INSERT INTO tasks(title ,date,time,status) VALUES ("first","0222","891","new")'
      ).then((value)
      {
        print('$value inserted successfully');
      }).catchError((error)
      {
        print('error on inserting new record ${error.toString()}');
      });
      return null;
    });
  }
}
