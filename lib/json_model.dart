import 'package:meta/meta.dart';
import 'dart:convert';

JsonModel jsonModelFromMap(String str) => JsonModel.fromMap(json.decode(str));

String jsonModelToMap(JsonModel data) => json.encode(data.toMap());

class JsonModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  JsonModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  JsonModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      JsonModel(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory JsonModel.fromMap(Map<String, dynamic> json) => JsonModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
