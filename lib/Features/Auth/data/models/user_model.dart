import 'dart:convert';

class UserModel {
  String name;
  String email;
  String? gender;
  String? age;
  String? img;
  String? phone;
  String? token;
  UserModel({
    required this.name,
    required this.email,
    this.gender,
    this.token,
    this.age,
    this.img,
    this.phone,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) => UserModel(
        name: data['name'] as String,
        email: data['email'] as String,
        gender: data['gender'] as String,
        age: data['age'] as String,
        img: data['img'] as String,
        phone: data['phone'] as String,
        token: data['token'] as String,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'gender': gender,
        'age': age,
        'img': img,
        'phone': phone,
      };
  factory UserModel.fromJson(String data) {
    return UserModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }
}
