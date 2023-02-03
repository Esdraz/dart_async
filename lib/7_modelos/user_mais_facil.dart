// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_async/7_modelos/user_types_mais_facil.dart';

class UserMaisFacil {
  final String id;
  final String name;
  final String userName;
  final List<UserTypesMaisFacil> userTypes;

  UserMaisFacil({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory UserMaisFacil.fromMap(Map<String, dynamic> map) {
    return UserMaisFacil(
      id: map['id'] as String,
      name: map['name'] as String,
      userName: map['username'] as String,
      userTypes: List<UserTypesMaisFacil>.from(
        map['user_types'].map((x) => UserTypesMaisFacil.fromMap(x)),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserMaisFacil.fromJson(String source) =>
      UserMaisFacil.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserMaisFacil(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
  }
}
