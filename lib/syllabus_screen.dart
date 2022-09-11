import 'package:flutter/material.dart';
import 'package:time_table_syllabus/syllabus_Item.dart';
import 'daysData.dart';

class Syllabus extends StatelessWidget {
  const Syllabus({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(15),
        children: Syllabus_data_full.map(
              (catData) => Padding(
            padding: const EdgeInsets.all(9.0),
            child: Syllabus_Item(
              catData.url,
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
