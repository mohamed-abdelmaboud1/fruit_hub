class UserEntity {
  final String id;
  final String email;
  final String name;

  UserEntity({
    required this.id,
    required this.email,
    required this.name,
  });
  // toMap method
  toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
    };
  }
}
