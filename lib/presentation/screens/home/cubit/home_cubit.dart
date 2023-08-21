import 'package:bloc/bloc.dart';
import 'package:deraya_application/domain/models/category_model/categories_model.dart';
import 'package:deraya_application/domain/models/courses/courses_model.dart';
import 'package:deraya_application/domain/repository/course_repo/course_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  CategoriesData? categoriesModel;

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
}
