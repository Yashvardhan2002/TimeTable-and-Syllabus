import 'package:flutter/material.dart';
import 'package:time_table_syllabus/day_schedule_screen.dart';
// ignore: unused_import
import 'daysData.dart';

class DayItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  DayItem(this.id, this.title, this.color);

  void selectDay(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DaysSchedule.routeName,
      arguments: {
        "id": id,
        "title": title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDay(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
