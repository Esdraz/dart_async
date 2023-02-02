// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserTypes {
  final String id;
  final String userId;
  final String name;

  UserTypes({
    required this.id,
    required this.userId,
    required this.name,
  });

  factory UserTypes.fromMap(Map<String, dynamic> map) {
    return UserTypes(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
    );
  }
}

// {
// "name": "Nora Ankunding",
// "id": "1",
// "userId": "1"
// }
