import 'package:psawf/models/user.dart';

class PsawfMetarial {
  final int id;
  final int price;
  final String title;
  final String description;
  final bool violation;
  final String domainRGB;
  final String textureURL;
  final User user;

  PsawfMetarial({
    this.id,
    this.price,
    this.title,
    this.description,
    this.violation,
    this.domainRGB,
    this.textureURL,
    this.user,
  });

  factory PsawfMetarial.fromJson(Map<String, dynamic> json) {
    return PsawfMetarial(
      id: json['id'] as int,
      price: json['price'] as int,
      title: json['title'] as String,
      description: json['description'] as String ?? '',
      violation: json['violation'] as bool ?? '',
      domainRGB: json['domainRGB'] as String ?? '',
      textureURL: json['textureURL'] as String ?? '',
      user: User.fromJson(json['user']),
    );
  }
}