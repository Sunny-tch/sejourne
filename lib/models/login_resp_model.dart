// To parse this JSON data, do
//
//     final loginRespModel = loginRespModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoginRespModel loginRespModelFromJson(String str) => LoginRespModel.fromJson(json.decode(str));

String loginRespModelToJson(LoginRespModel data) => json.encode(data.toJson());

class LoginRespModel {
  final bool status;
  final String message;
  final List<dynamic> data;

  LoginRespModel({
    required this.status,
    required this.message,
    required this.data,
  });

  LoginRespModel copyWith({
    bool? status,
    String? message,
    List<dynamic>? data,
  }) =>
      LoginRespModel(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory LoginRespModel.fromJson(Map<String, dynamic> json) => LoginRespModel(
    status: json["status"],
    message: json["message"],
    data: List<dynamic>.from(json["data"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x)),
  };
}
