import 'package:flutter/material.dart';

class Day {
  final String id;
  final String title;
  final Color color;

  const Day({
    required this.id,
    required this.title,
    this.color = Colors.lightBlue,
  });
}
