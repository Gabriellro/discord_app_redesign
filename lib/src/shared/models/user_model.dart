import 'package:flutter/material.dart';

class UserModel {
  final String name;
  final String imageUrl;
  final Color status;

  const UserModel({
    required this.name,
    required this.imageUrl,
    required this.status,
  });
}
