class User {
  final int id;
  final String name;
  final String displayName;
  final String avatarURL;

  User({
    this.id,
    this.name,
    this.displayName,
    this.avatarURL
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      displayName: json['displayName'] as String,
      avatarURL: json['avatarURL'] as String,
    );
  }
}