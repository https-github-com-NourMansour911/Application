import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? gender;
  final int? age;
  final dynamic weight;
  final dynamic height;
  final dynamic country;
  final dynamic governorate;
  final dynamic img;
  final dynamic phone;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.age,
    this.weight,
    this.height,
    this.country,
    this.governorate,
    this.img,
    this.phone,
    this.createdAt,
    this.updatedAt,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) => UserModel(
        id: data['id'] as int?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        gender: data['gender'] as String?,
        age: data['age'] as int?,
        weight: data['weight'] as dynamic,
        height: data['height'] as dynamic,
        country: data['country'] as dynamic,
        governorate: data['governorate'] as dynamic,
        img: data['img'] as dynamic,
        phone: data['phone'] as dynamic,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
        'gender': gender,
        'age': age,
        'weight': weight,
        'height': height,
        'country': country,
        'governorate': governorate,
        'img': img,
        'phone': phone,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
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
      id,
      name,
      email,
      gender,
      age,
      weight,
      height,
      country,
      governorate,
      img,
      phone,
      createdAt,
      updatedAt,
    ];
  }
}
