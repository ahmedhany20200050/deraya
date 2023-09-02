import 'package:deraya_application/data/api/my_api.dart';
import 'package:deraya_application/domain/end_points/end_points.dart';
import 'package:deraya_application/domain/models/category_model/categories_model.dart';
import 'package:deraya_application/domain/models/courses/courses_model.dart';
import 'package:deraya_application/domain/models/instructor_model/instructor_model.dart';

class CourseRepo {
  Future<CategoriesData?> getCategories() async {
    CategoriesData? categoriesModel;
    final response = await DioHelper.getData(
      url: EndPoints.category,
      loading: true,
      token:"Bearer 8|fyRSqKqHBtgoNBkxjKldOZpELqCO9LO0rXgQflpn"

    );
    if (response != null) {
      categoriesModel = CategoriesData.fromJson(response.data["data"]);
      return categoriesModel;
    }
    else{
      return null ;
    }

  }

  Future<SubcategoriesData?> getSubcategories() async {
    SubcategoriesData? subcategoriesModel;
    final response = await DioHelper.getData(
      url: EndPoints.subCategory,
      loading: true,
      token:"Bearer 8|fyRSqKqHBtgoNBkxjKldOZpELqCO9LO0rXgQflpn"

    );
    if (response != null) {
      subcategoriesModel = SubcategoriesData.fromJson(response.data["data"]);
      return subcategoriesModel;
    }
    else{
      return null ;
    }
/*
var headers = {
  'Accept': 'application/json',
  'Accept-Language': 'en'
};
var request = http.MultipartRequest('GET', Uri.parse('https://diraya.xyz/api/subcategory'));

request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}

 */
  }

  Future<CourseData?> getCourses()async {
    CourseData? courseData;
    final response = await DioHelper.getData(
      url: EndPoints.course,
      loading: true,
        token:"Bearer 8|fyRSqKqHBtgoNBkxjKldOZpELqCO9LO0rXgQflpn"

    );
    if (response != null) {
      courseData = CourseData.fromJson(response.data["data"]);
      return courseData;
    }
    else{
      return null ;
    }

  }

  Future<InstructorData?> getInstructors()async {
    InstructorData? instructorData;

    final response = await DioHelper.getData(
      url: EndPoints.instructor,
      loading: true,
        token:"Bearer 8|fyRSqKqHBtgoNBkxjKldOZpELqCO9LO0rXgQflpn",

    );
    if (response != null) {
      instructorData = InstructorData.fromJson(response.data["data"]);
      return instructorData;
    }
    else{
      return null ;
    }
  }
}
