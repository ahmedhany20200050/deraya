part of 'home_cubit.dart';

@immutable
abstract class HomeStates {}

class HomeInitial extends HomeStates {}
class HomeGetCategoriesLoadingState extends HomeStates {}
class HomeGetCategoriesSuccessState extends HomeStates {}
class HomeGetCategoriesErrorState extends HomeStates {}

class HomeGetCoursesLoadingState extends HomeStates {}
class HomeGetCoursesSuccessState extends HomeStates {}
class HomeGetCoursesErrorState extends HomeStates {}

class HomeGetInstructorLoadingState extends HomeStates {}
class HomeGetInstructorSuccessState extends HomeStates {}
class HomeGetInstructorErrorState extends HomeStates {}
