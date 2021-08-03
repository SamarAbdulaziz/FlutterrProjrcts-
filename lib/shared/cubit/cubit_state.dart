part of 'cubit_cubit.dart';

@immutable
abstract class AppStates {}

class InitialState extends AppStates {}
class AppChangeBottomNavBarState extends AppStates{}
class AppCreateDatabaseState extends AppStates{}
class AppGetDatabaseState extends AppStates{}
class AppInsertDatabaseState extends AppStates{}
class AppChangeBottomSheetState extends AppStates{}

