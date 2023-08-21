import 'package:deraya_application/data/api/my_api.dart';
import 'package:deraya_application/domain/end_points/end_points.dart';
import 'package:deraya_application/domain/models/category_model/categories_model.dart';

class CourseRepo {
  Future<CategoriesData?> getCategories() async {
    CategoriesData? categoriesModel;
    final response = await DioHelper.getData(
      url: EndPoints.category,
      loading: true,
      token:"Bearer 8|fyRSqKqHBtgoNBkxjKldOZpELqCO9LO0rXgQflpn"

    );
    if (response != null) {
      categoriesModel = CategoriesData.fromJson(response.data["data"]["categories"]);
      return categoriesModel;
    }
    else{
      return null ;
    }

  }
}
