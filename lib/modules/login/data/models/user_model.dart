// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
// ignore_for_file: overridden_fields

import 'dart:convert';

import 'package:my_coach_app/modules/app/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  @override
  String email;
  @override
  String genre;
  @override
  double height;
  @override
  double kg;
  @override
  String name;
  @override
  int phone_number;
  @override
  DateTime year_of_birth;

  UserModel({
    required this.email,
    required this.genre,
    required this.height,
    required this.kg,
    required this.name,
    required this.phone_number,
    required this.year_of_birth,
  }) : super('', '', 0.0, 0.0, '', 0, DateTime.now());

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'genre': genre,
      'height': height,
      'kg': kg,
      'name': name,
      'phone_number': phone_number,
      'year_of_birth': year_of_birth.millisecondsSinceEpoch,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      genre: map['genre'] as String,
      height: map['height'] as double,
      kg: map['kg'] as double,
      name: map['name'] as String,
      phone_number: map['phone_number'] as int,
      year_of_birth: DateTime.fromMillisecondsSinceEpoch(map['year_of_birth'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
