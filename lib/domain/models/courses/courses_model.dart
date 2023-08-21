/// success : true
/// message : ""
/// data : {"courses":[{"id":4,"name_en":"html","name_ar":"pythoon","description_en":"llaravelllaravelllaravelllaravelllaravel","description_ar":"لارفيللارفيللارفيللارفيللارفيللارفيللارفيل","hours":5,"lectures":12,"level":"Beginner","price":"99.99","image":"http://diraya.xyz/images/courses/64e26cc8f2201.jpg","video":"https://stackoverflow.com/questions/65709480/json-file-error-in-visual-studio-code-expected-comma-json514","language":"English","last_update":null,"requirement_en":"need need need need need","requirement_ar":"نيد نيد نيد نيد نيد نيد","status":"published","created_at":"2023-08-20T19:43:05.000000Z","updated_at":"2023-08-20T19:43:05.000000Z","deleted_at":null},{"id":5,"name_en":"html","name_ar":"pythoon","description_en":"flutter & dart","description_ar":"فلاتر دارت","hours":5,"lectures":12,"level":"Beginner","price":"99.99","image":"http://diraya.xyz/images/courses/64e32796e60f9.jpg","video":"https://youtu.be/ceMsPBbcEGg","language":"English","last_update":null,"requirement_en":"need need need need need","requirement_ar":"نيد نيد نيد نيد نيد نيد","status":"published","created_at":"2023-08-21T09:00:06.000000Z","updated_at":"2023-08-21T09:00:06.000000Z","deleted_at":null},{"id":6,"name_en":"html","name_ar":"pythoon","description_en":"llaravelllaravelllaravelllaravelllaravel","description_ar":"لارفيللارفيللارفيللارفيللارفيللارفيللارفيل","hours":5,"lectures":12,"level":"Beginner","price":"99.99","image":"http://diraya.xyz/images/courses/64e3550d75dd8.json","video":"https://stackoverflow.com/questions/65709480/json-file-error-in-visual-studio-code-expected-comma-json514","language":"English","last_update":null,"requirement_en":"need need need need need","requirement_ar":"نيد نيد نيد نيد نيد نيد","status":"published","created_at":"2023-08-21T12:14:05.000000Z","updated_at":"2023-08-21T12:14:05.000000Z","deleted_at":null}]}
/// errors : {}

class CoursesModel {
  CoursesModel({
      this.success, 
      this.message, 
      this.data, 
      this.errors,});

  CoursesModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? CourseData.fromJson(json['data']) : null;
    errors = json['errors'];
  }
  bool? success;
  String? message;
  CourseData? data;
  dynamic errors;
CoursesModel copyWith({  bool? success,
  String? message,
  CourseData? data,
  dynamic errors,
}) => CoursesModel(  success: success ?? this.success,
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

/// courses : [{"id":4,"name_en":"html","name_ar":"pythoon","description_en":"llaravelllaravelllaravelllaravelllaravel","description_ar":"لارفيللارفيللارفيللارفيللارفيللارفيللارفيل","hours":5,"lectures":12,"level":"Beginner","price":"99.99","image":"http://diraya.xyz/images/courses/64e26cc8f2201.jpg","video":"https://stackoverflow.com/questions/65709480/json-file-error-in-visual-studio-code-expected-comma-json514","language":"English","last_update":null,"requirement_en":"need need need need need","requirement_ar":"نيد نيد نيد نيد نيد نيد","status":"published","created_at":"2023-08-20T19:43:05.000000Z","updated_at":"2023-08-20T19:43:05.000000Z","deleted_at":null},{"id":5,"name_en":"html","name_ar":"pythoon","description_en":"flutter & dart","description_ar":"فلاتر دارت","hours":5,"lectures":12,"level":"Beginner","price":"99.99","image":"http://diraya.xyz/images/courses/64e32796e60f9.jpg","video":"https://youtu.be/ceMsPBbcEGg","language":"English","last_update":null,"requirement_en":"need need need need need","requirement_ar":"نيد نيد نيد نيد نيد نيد","status":"published","created_at":"2023-08-21T09:00:06.000000Z","updated_at":"2023-08-21T09:00:06.000000Z","deleted_at":null},{"id":6,"name_en":"html","name_ar":"pythoon","description_en":"llaravelllaravelllaravelllaravelllaravel","description_ar":"لارفيللارفيللارفيللارفيللارفيللارفيللارفيل","hours":5,"lectures":12,"level":"Beginner","price":"99.99","image":"http://diraya.xyz/images/courses/64e3550d75dd8.json","video":"https://stackoverflow.com/questions/65709480/json-file-error-in-visual-studio-code-expected-comma-json514","language":"English","last_update":null,"requirement_en":"need need need need need","requirement_ar":"نيد نيد نيد نيد نيد نيد","status":"published","created_at":"2023-08-21T12:14:05.000000Z","updated_at":"2023-08-21T12:14:05.000000Z","deleted_at":null}]

class CourseData {
  CourseData({
      this.courses,});

  CourseData.fromJson(dynamic json) {
    if (json['courses'] != null) {
      courses = [];
      json['courses'].forEach((v) {
        courses?.add(Courses.fromJson(v));
      });
    }
  }
  List<Courses>? courses;
CourseData copyWith({  List<Courses>? courses,
}) => CourseData(  courses: courses ?? this.courses,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (courses != null) {
      map['courses'] = courses?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 4
/// name_en : "html"
/// name_ar : "pythoon"
/// description_en : "llaravelllaravelllaravelllaravelllaravel"
/// description_ar : "لارفيللارفيللارفيللارفيللارفيللارفيللارفيل"
/// hours : 5
/// lectures : 12
/// level : "Beginner"
/// price : "99.99"
/// image : "http://diraya.xyz/images/courses/64e26cc8f2201.jpg"
/// video : "https://stackoverflow.com/questions/65709480/json-file-error-in-visual-studio-code-expected-comma-json514"
/// language : "English"
/// last_update : null
/// requirement_en : "need need need need need"
/// requirement_ar : "نيد نيد نيد نيد نيد نيد"
/// status : "published"
/// created_at : "2023-08-20T19:43:05.000000Z"
/// updated_at : "2023-08-20T19:43:05.000000Z"
/// deleted_at : null

class Courses {
  Courses({
      this.id, 
      this.nameEn, 
      this.nameAr, 
      this.descriptionEn, 
      this.descriptionAr, 
      this.hours, 
      this.lectures, 
      this.level, 
      this.price, 
      this.image, 
      this.video, 
      this.language, 
      this.lastUpdate, 
      this.requirementEn, 
      this.requirementAr, 
      this.status, 
      this.createdAt, 
      this.updatedAt, 
      this.deletedAt,});

  Courses.fromJson(dynamic json) {
    id = json['id'];
    nameEn = json['name_en'];
    nameAr = json['name_ar'];
    descriptionEn = json['description_en'];
    descriptionAr = json['description_ar'];
    hours = json['hours'];
    lectures = json['lectures'];
    level = json['level'];
    price = json['price'];
    image = json['image'];
    video = json['video'];
    language = json['language'];
    lastUpdate = json['last_update'];
    requirementEn = json['requirement_en'];
    requirementAr = json['requirement_ar'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }
  int? id;
  String? nameEn;
  String? nameAr;
  String? descriptionEn;
  String? descriptionAr;
  int? hours;
  int? lectures;
  String? level;
  String? price;
  String? image;
  String? video;
  String? language;
  dynamic lastUpdate;
  String? requirementEn;
  String? requirementAr;
  String? status;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
Courses copyWith({  int? id,
  String? nameEn,
  String? nameAr,
  String? descriptionEn,
  String? descriptionAr,
  int? hours,
  int? lectures,
  String? level,
  String? price,
  String? image,
  String? video,
  String? language,
  dynamic lastUpdate,
  String? requirementEn,
  String? requirementAr,
  String? status,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
}) => Courses(  id: id ?? this.id,
  nameEn: nameEn ?? this.nameEn,
  nameAr: nameAr ?? this.nameAr,
  descriptionEn: descriptionEn ?? this.descriptionEn,
  descriptionAr: descriptionAr ?? this.descriptionAr,
  hours: hours ?? this.hours,
  lectures: lectures ?? this.lectures,
  level: level ?? this.level,
  price: price ?? this.price,
  image: image ?? this.image,
  video: video ?? this.video,
  language: language ?? this.language,
  lastUpdate: lastUpdate ?? this.lastUpdate,
  requirementEn: requirementEn ?? this.requirementEn,
  requirementAr: requirementAr ?? this.requirementAr,
  status: status ?? this.status,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  deletedAt: deletedAt ?? this.deletedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_en'] = nameEn;
    map['name_ar'] = nameAr;
    map['description_en'] = descriptionEn;
    map['description_ar'] = descriptionAr;
    map['hours'] = hours;
    map['lectures'] = lectures;
    map['level'] = level;
    map['price'] = price;
    map['image'] = image;
    map['video'] = video;
    map['language'] = language;
    map['last_update'] = lastUpdate;
    map['requirement_en'] = requirementEn;
    map['requirement_ar'] = requirementAr;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    return map;
  }

}