import 'package:flutter/material.dart';

class Syllabus_data {

  final String title;
  final Color color;
  final String url;

  const Syllabus_data({
    required this.url,
    required this.title,
    this.color = Colors.lightBlue,
  });
}