import 'package:flutter/material.dart';

class Category {
  final String title;
  final String id;
  final Color color;
  const Category(
      {this.color = Colors.orange, @required this.id, @required this.title});
}
