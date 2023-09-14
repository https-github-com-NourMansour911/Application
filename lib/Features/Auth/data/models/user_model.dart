import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  String name;
  String password;
  String email;
  String gender;
  int age;
  String? img;
  String? phone;
  UserModel({
    required this.password,
    required this.name,
    required this.email,
    required this.gender,
    required this.age,
    this.img,
    this.phone,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) => UserModel(
        name: data['name'] as String,
        password: data['name'] as String,
        email: data['email'] as String,
        gender: data['gender'] as String,
        age: data['age'] as int,
        img: data['img'] as dynamic,
        phone: data['phone'] as String,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'password': password,
        'email': email,
        'gender': gender,
        'age': age,
        'img': img,
        'phone': phone,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserModel].
  factory UserModel.fromJson(String data) {
    return UserModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [UserModel] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      name,
      email,
      gender,
      age,
      img,
      phone,
    ];
  }
}
