import 'package:flutter/material.dart';
import 'package:flutter_app/shared/components/components.dart';
import 'package:flutter_app/shared/cubit/cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArchivedTasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var tasks=AppCubit.get(context).archivedTasks;
        return tasksBuilder(
            tasks: tasks
        );
      },
    );
  }
}
