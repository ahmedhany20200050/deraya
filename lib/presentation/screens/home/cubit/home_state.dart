part of 'home_cubit.dart';

@immutable
abstract class HomeStates {}

class HomeInitial extends HomeStates {}
class HomeGetCategoriesLoadingState extends HomeStates {}
class HomeGetCategoriesSuccessState extends HomeStates {}
class HomeGetCategoriesErrorState extends HomeStates {}
