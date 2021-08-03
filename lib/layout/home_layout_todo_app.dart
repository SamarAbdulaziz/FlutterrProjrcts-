import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter_app/shared/components/constants.dart';
import 'package:flutter_app/shared/cubit/cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app/modules/archived/archivedTasksScreen.dart';
import 'package:flutter_app/modules/done/DoneTaskesScreen.dart';
import 'package:flutter_app/modules/taskes/newTaskesScreen.dart';
import 'package:flutter_app/shared/components/components.dart';
import 'package:sqflite/sqflite.dart';

class TodoApp extends StatelessWidget {
  //IconData fabIcon=Icons.edit;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();
  @override
  // void initState() {
  //   super.initState();
  //   createDatabase();
  // }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(
              context); //you have to put this line inside bloc provider

          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(
                cubit.titles[cubit.currentIndex],
              ),
            ),
            body: ConditionalBuilder(
              condition: true,
              builder: (context) => cubit.screens[cubit.currentIndex],
              fallback: (context) => Center(child: CircularProgressIndicator()),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (cubit.isBottomSheetShown) {
                  if (formKey.currentState.validate()) {
                    // insertIntoDatabase(
                    //   title: titleController.text,
                    //   date: dateController.text,
                    //   time: timeController.text,
                    // ).then((value) {
                    //   getDataFromDatabase(database).then((value) {
                    //     Navigator.pop(context);
                    //     // setState(() {
                    //     //   isBottomSheetShown = false;
                    //     //   fabIcon=icons.edit;
                    //     //   tasks = value;
                    //     //   print(tasks);
                    //     // });
                    //   });
                    // });
                  }
                }
                else { //the sheet is closed
                  scaffoldKey.currentState
                      .showBottomSheet(
                          (context) => Container(
                                color: Colors.white,
                                padding: EdgeInsets.all(
                                  20.0,
                                ),
                                child: Form(
                                  key: formKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      defaultFormField(
                                        controller: titleController,
                                        type: TextInputType.text,
                                        validate: (String value) {
                                          if (value.isEmpty) {
                                            return 'title must not be empty';
                                          }
                                          return null;
                                        },
                                        label: 'Task Title',
                                        prefix: Icons.title,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      defaultFormField(
                                          controller: timeController,
                                          type: TextInputType.datetime,
                                          onTap: () {
                                            showTimePicker(
                                              context: context,
                                              initialTime: TimeOfDay.now(),
                                            ).then((value) {
                                              timeController.text = value
                                                  .format(context)
                                                  .toString();
                                              print(value.format(context));
                                            });
                                          },
                                          validate: (String value) {
                                            if (value.isEmpty) {
                                              return 'time must not be empty';
                                            }
                                            return null;
                                          },
                                          label: 'Task Time',
                                          prefix: Icons.watch_later_outlined),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      defaultFormField(
                                        controller: dateController,
                                        type: TextInputType.datetime,
                                        onTap: () {
                                          showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate: DateTime.now()
                                                .add(Duration(days: 365)),
                                          ).then((value) {
                                            dateController.text =
                                                DateFormat.yMMMd()
                                                    .format(value);
                                          });
                                        },
                                        validate: (String value) {
                                          if (value.isEmpty) {
                                            return 'date must not be empty';
                                          }
                                          return null;
                                        },
                                        label: 'Task Date',
                                        prefix: Icons.calendar_today_outlined,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          elevation: 20.0)
                      .closed
                      .then((value) {
                    cubit.isBottomSheetShown = false;
                    // setState(() {
                    //   //fabIcon=Icons.edit;
                    // });
                  });
                  cubit.isBottomSheetShown = true;
//                  print('${cubit.isBottomSheetShown}');// just trying to test it
                  // setState(() {
                  //   // fabIcon=Icons.add;
                  // });
                } // insertIntoDatabase();
              },
              child:Icon(
                cubit.fabIcon,
                    ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeIndex(index);
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
        },
      ),
    );
  }
}
