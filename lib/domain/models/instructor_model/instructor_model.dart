/// success : true
/// message : ""
/// data : {"instructor":[{"id":1,"name":"saed","qualification":"inframtion system","expertise":"work on amzon","email":"saed@email.com","password":"$2y$10$gtN7I/qnwYu88wfkmH6.SORuxHgAjqqRu90KY8fxnHWsK5fXC2ccm","phone":"01010151688","image":"http://diraya.xyz/images/instructors/64e36f016e04f.jpg","deleted_at":null,"created_at":"2023-08-21T14:04:49.000000Z","updated_at":"2023-08-21T14:04:49.000000Z"},{"id":2,"name":"Mostafa","qualification":"Mostafa","expertise":"xxx","email":"most@gmail.com","password":"$2y$10$Yyba0Jqhw52nduT9Vh4lv.ZNImzZ/c4WosZONBjJ63XBLkdItzQGO","phone":"01064564850","image":"http://diraya.xyz/images/instructors/64e36f202035b.jpg","deleted_at":null,"created_at":"2023-08-21T14:05:20.000000Z","updated_at":"2023-08-21T14:05:20.000000Z"},{"id":3,"name":"Update","qualification":"Update","expertise":"update","email":"most2@gmail.com","password":"$2y$10$EV4ZGRLrlUaGnIKegzTlvexNu6xSgVx59IcZ7uigSY32CKSuObdme","phone":"01064564855","image":null,"deleted_at":null,"created_at":"2023-08-21T15:00:41.000000Z","updated_at":"2023-08-21T15:14:14.000000Z"}]}
/// errors : {}

class InstructorModel {
  InstructorModel({
      this.success, 
      this.message, 
      this.data, 
      this.errors,});

  InstructorModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? InstructorData.fromJson(json['data']) : null;
    errors = json['errors'];
  }
  bool? success;
  String? message;
  InstructorData? data;
  dynamic errors;
InstructorModel copyWith({  bool? success,
  String? message,
  InstructorData? data,
  dynamic errors,
}) => InstructorModel(  success: success ?? this.success,
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

/// instructor : [{"id":1,"name":"saed","qualification":"inframtion system","expertise":"work on amzon","email":"saed@email.com","password":"$2y$10$gtN7I/qnwYu88wfkmH6.SORuxHgAjqqRu90KY8fxnHWsK5fXC2ccm","phone":"01010151688","image":"http://diraya.xyz/images/instructors/64e36f016e04f.jpg","deleted_at":null,"created_at":"2023-08-21T14:04:49.000000Z","updated_at":"2023-08-21T14:04:49.000000Z"},{"id":2,"name":"Mostafa","qualification":"Mostafa","expertise":"xxx","email":"most@gmail.com","password":"$2y$10$Yyba0Jqhw52nduT9Vh4lv.ZNImzZ/c4WosZONBjJ63XBLkdItzQGO","phone":"01064564850","image":"http://diraya.xyz/images/instructors/64e36f202035b.jpg","deleted_at":null,"created_at":"2023-08-21T14:05:20.000000Z","updated_at":"2023-08-21T14:05:20.000000Z"},{"id":3,"name":"Update","qualification":"Update","expertise":"update","email":"most2@gmail.com","password":"$2y$10$EV4ZGRLrlUaGnIKegzTlvexNu6xSgVx59IcZ7uigSY32CKSuObdme","phone":"01064564855","image":null,"deleted_at":null,"created_at":"2023-08-21T15:00:41.000000Z","updated_at":"2023-08-21T15:14:14.000000Z"}]

class InstructorData {
  InstructorData({
      this.instructor,});

  InstructorData.fromJson(dynamic json) {
    if (json['instructor'] != null) {
      instructor = [];
      json['instructor'].forEach((v) {
        instructor?.add(Instructor.fromJson(v));
      });
    }
  }
  List<Instructor>? instructor;
InstructorData copyWith({  List<Instructor>? instructor,
}) => InstructorData(  instructor: instructor ?? this.instructor,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (instructor != null) {
      map['instructor'] = instructor?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name : "saed"
/// qualification : "inframtion system"
/// expertise : "work on amzon"
/// email : "saed@email.com"
/// password : "$2y$10$gtN7I/qnwYu88wfkmH6.SORuxHgAjqqRu90KY8fxnHWsK5fXC2ccm"
/// phone : "01010151688"
/// image : "http://diraya.xyz/images/instructors/64e36f016e04f.jpg"
/// deleted_at : null
/// created_at : "2023-08-21T14:04:49.000000Z"
/// updated_at : "2023-08-21T14:04:49.000000Z"

class Instructor {
  Instructor({
      this.id, 
      this.name, 
      this.qualification, 
      this.expertise, 
      this.email, 
      this.password, 
      this.phone, 
      this.image, 
      this.deletedAt, 
      this.createdAt, 
      this.updatedAt,});

  Instructor.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    qualification = json['qualification'];
    expertise = json['expertise'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    image = json['image'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? name;
  String? qualification;
  String? expertise;
  String? email;
  String? password;
  String? phone;
  String? image;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
Instructor copyWith({  int? id,
  String? name,
  String? qualification,
  String? expertise,
  String? email,
  String? password,
  String? phone,
  String? image,
  dynamic deletedAt,
  String? createdAt,
  String? updatedAt,
}) => Instructor(  id: id ?? this.id,
  name: name ?? this.name,
  qualification: qualification ?? this.qualification,
  expertise: expertise ?? this.expertise,
  email: email ?? this.email,
  password: password ?? this.password,
  phone: phone ?? this.phone,
  image: image ?? this.image,
  deletedAt: deletedAt ?? this.deletedAt,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['qualification'] = qualification;
    map['expertise'] = expertise;
    map['email'] = email;
    map['password'] = password;
    map['phone'] = phone;
    map['image'] = image;
    map['deleted_at'] = deletedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}