/// success : true
/// message : ""
/// data : {"categories":[{"id":5,"name_en":"web","name_ar":"ويب","image":"http://127.0.0.1:8000/images/categories/64df631192eca.png","created_at":"2023-08-18T11:24:49.000000Z","updated_at":"2023-08-18T11:24:49.000000Z","deleted_at":null}]}
/// errors : {}

class CategoriesModel {
  CategoriesModel({
      this.success, 
      this.message, 
      this.data, 
      this.errors,});

  CategoriesModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? CategoriesData.fromJson(json['data']) : null;
    errors = json['errors'];
  }
  bool? success;
  String? message;
  CategoriesData? data;
  dynamic errors;
CategoriesModel copyWith({  bool? success,
  String? message,
  CategoriesData? data,
  dynamic errors,
}) => CategoriesModel(  success: success ?? this.success,
  message: message ?? this.message,
  data: data ?? this.data,
  errors: errors ?? this.errors,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['errors'] = errors;
    return map;
  }

}

/// categories : [{"id":5,"name_en":"web","name_ar":"ويب","image":"http://127.0.0.1:8000/images/categories/64df631192eca.png","created_at":"2023-08-18T11:24:49.000000Z","updated_at":"2023-08-18T11:24:49.000000Z","deleted_at":null}]

class CategoriesData {
  CategoriesData({
      this.categories,});

  CategoriesData.fromJson(dynamic json) {
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
  }
  List<Categories>? categories;
CategoriesData copyWith({  List<Categories>? categories,
}) => CategoriesData(  categories: categories ?? this.categories,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 5
/// name_en : "web"
/// name_ar : "ويب"
/// image : "http://127.0.0.1:8000/images/categories/64df631192eca.png"
/// created_at : "2023-08-18T11:24:49.000000Z"
/// updated_at : "2023-08-18T11:24:49.000000Z"
/// deleted_at : null

class Categories {
  Categories({
      this.id, 
      this.nameEn, 
      this.nameAr, 
      this.image, 
      this.createdAt, 
      this.updatedAt, 
      this.deletedAt,});

  Categories.fromJson(dynamic json) {
    id = json['id'];
    nameEn = json['name_en'];
    nameAr = json['name_ar'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }
  int? id;
  String? nameEn;
  String? nameAr;
  String? image;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
Categories copyWith({  int? id,
  String? nameEn,
  String? nameAr,
  String? image,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
}) => Categories(  id: id ?? this.id,
  nameEn: nameEn ?? this.nameEn,
  nameAr: nameAr ?? this.nameAr,
  image: image ?? this.image,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  deletedAt: deletedAt ?? this.deletedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_en'] = nameEn;
    map['name_ar'] = nameAr;
    map['image'] = image;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    return map;
  }

}