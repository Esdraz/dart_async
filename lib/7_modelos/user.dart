import 'package:dart_async/7_modelos/user_types.dart';

class User {
  final String id;
  final String name;
  final String userName;
  final List<UserTypes> userTypes;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['username'] ?? '',
      userTypes: map['user_types']?.map((type) {
            return UserTypes.fromMap(type);
          }).toList() ??
          [],
    );
  }

  // continuar aula 18:20
}


// {
// "id": "1",
// "name": "Madalyn Dibbert",
// "username": "Eugenia.Heller43",
// "user_types": [
// {
// "name": "Nora Ankunding",
// "id": "1",
// "userId": "1"
// }
// ]
// }