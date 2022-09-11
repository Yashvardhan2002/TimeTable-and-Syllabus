import 'package:flutter/material.dart';
import 'daysData.dart';
import 'day_item.dart';

class DaysScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(15),
        children: Day_Data.map(
          (catData) => Padding(
            padding: const EdgeInsets.all(9.0),
            child: DayItem(
              catData.id,
              catData.title,
              catData.color,
            ),
          ),
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisExtent: 120,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30
        ),
      ),
    );
  }
}
