// ignore_for_file: overridden_fields

import 'dart:convert';

import 'package:my_coach_app/modules/app/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  @override
  final String email;
  @override
  final String senha;
  @override
  final String nome;

  UserModel({
    this.email = '',
    this.senha = '',
    this.nome = '',
  }) : super('', '', '');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'senha': senha,
      'nome': nome,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      senha: map['senha'] as String,
      nome: map['nome'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
