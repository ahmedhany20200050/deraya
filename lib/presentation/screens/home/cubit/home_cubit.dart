import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:deraya_application/domain/models/category_model/categories_model.dart';
import 'package:deraya_application/domain/models/courses/courses_model.dart';
import 'package:deraya_application/domain/models/instructor_model/instructor_model.dart';
import 'package:deraya_application/domain/repository/course_repo/course_repo.dart';
import 'package:deraya_application/presentation/screens/login/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  CategoriesData? categoriesModel;
  SubcategoriesData? subcategoriesModel;

  getCategories() async {
    emit(HomeGetCategoriesLoadingState());
    final response = await CourseRepo().getCategories();
    if (response != null) {
      categoriesModel = response;
      emit(HomeGetCategoriesSuccessState());
    }
    else{
      emit(HomeGetCategoriesErrorState());
    }
  }  geSubcategories() async {
    emit(HomeGetCategoriesLoadingState());
    final response = await CourseRepo().getSubcategories();
    if (response != null) {
      subcategoriesModel = response;
      emit(HomeGetCategoriesSuccessState());
    }
    else{
      emit(HomeGetCategoriesErrorState());
    }
  }

  CourseData? courseData;
  getCourses() async {

    emit(HomeGetCoursesLoadingState());
    final response = await CourseRepo().getCourses();
    if (response != null) {
      courseData = response;
      emit(HomeGetCoursesSuccessState());
    }
    else{
      emit(HomeGetCoursesErrorState());
    }
  }
  List<int>userCoursesIDs=[];
  List<Courses> userCourses=[];
  getUserCourses() async {
    await Future.delayed(Duration(seconds: 2));
    http.Response response = await http.get(
        headers: <String, String>{
          'Accept-Language': 'en',
          "Accept": "application/json",
          'Authorization': userUltraProMax?.token??"",
        },Uri.parse("https://diraya.xyz/api/enrollment/userCourses/${userUltraProMax?.id}"));
    dynamic json = jsonDecode(response.body)["data"];
    if (json["enrollment"] != null) {
      for(var course in json["enrollment"]){
        userCoursesIDs.add(course["course_id"]);
      }
      if(userCoursesIDs.isNotEmpty)
      emit(HomeGetUserCoursesSuccessState());

    }

    // var k=userCoursesIDs;
  }
  InstructorData? instructorData;
  getInstructors() async {
    emit(HomeGetInstructorLoadingState());
    final response = await CourseRepo().getInstructors();
    if (response != null) {
      instructorData = response;
      emit(HomeGetInstructorSuccessState());
    }
    else{

      emit(HomeGetInstructorErrorState());
    }
  }
}

