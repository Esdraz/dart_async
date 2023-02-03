import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserTypesMaisFacil {
  final String id;
  final String userId;
  final String name;

  UserTypesMaisFacil({
    required this.id,
    required this.userId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  factory UserTypesMaisFacil.fromMap(Map<String, dynamic> map) {
    return UserTypesMaisFacil(
      id: map['id'] as String,
      userId: map['userId'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTypesMaisFacil.fromJson(String source) =>
      UserTypesMaisFacil.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'UserTypesMaisFacil(id: $id, userId: $userId, name: $name)';
}
