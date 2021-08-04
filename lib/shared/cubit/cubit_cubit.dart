import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/modules/archived/archivedTasksScreen.dart';
import 'package:flutter_app/modules/done/DoneTaskesScreen.dart';
import 'package:flutter_app/modules/taskes/newTaskesScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sqflite/sqflite.dart';

part 'cubit_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context)=>BlocProvider.of(context);

  int currentIndex = 0;
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
  void changeIndex(index){
    currentIndex=index;
    emit(AppChangeBottomNavBarState());
  }
  Database database;
  List<Map> tasks=[];
  bool isBottomSheetShown = false;
  IconData fabIcon=Icons.edit;

  void createDatabase()
  {
   openDatabase('todo.db', version: 1,
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
          getDataFromDatabase(database).then((value) {
            tasks = value;
            print(tasks);
            emit(AppGetDatabaseState());
          });
          print('database opened');
        }).then((value) {
          database=value;
          emit(AppCreateDatabaseState());
   });
  }




  Future insertIntoDatabase({
    @required String title,
    @required String time,
    @required String date,
  }) async {
    return await database.transaction((txn) {
      txn.rawInsert(
          'INSERT INTO tasks(title ,date,time,status) VALUES ("$title","$date","$time","new")')
          .then((value) {
        print('$value inserted successfully');
        emit(AppInsertDatabaseState());
        getDataFromDatabase(database).then((value) {
          tasks = value;
          print(tasks);
          emit(AppGetDatabaseState());
        });
      }).catchError((error) {
        print('error on inserting new record ${error.toString()}');
      });
      return null;
    });
  }

  Future<List<Map>> getDataFromDatabase(database) async {
    return await database.rawQuery('SELECT * FROM tasks');
  }
  void changeBottomSheetState({
  @required bool isShow,
  @required IconData icon,
}){
    isBottomSheetShown=isShow;
    fabIcon=icon;
    emit(AppChangeBottomSheetState());
  }

}
