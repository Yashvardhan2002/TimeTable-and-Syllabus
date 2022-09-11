import 'package:flutter/material.dart';
import './daysData.dart';

class DaysSchedule extends StatelessWidget {
  static const routeName = '/days-schedule';

  // final String dayId;
  // final String dayTitle;
  //
  // DaysSchedule(this.dayId, this.dayTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final dayTitle = routeArgs['title'];

    final dayId = routeArgs['id'];
    final dayTimeTable = Day_Schedule.where((timeTable) {
      return timeTable.schedule.contains(dayId);
    }).toList();

    final selectedDay = Day_Schedule.firstWhere((day) => day.id == dayId);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('${dayTitle}', style: TextStyle(fontFamily: 'Monts'),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(

              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Timetable',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Pop',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                height: 600,
                width: 500,
                
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index)=> Padding(
                    padding: const EdgeInsets.fromLTRB(8,8, 8,8),
                    child: Card(

                      color: Theme.of(context).accentColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(selectedDay.schedule[index]),
                      ),
                    ),
                  ),
                  itemCount: selectedDay.schedule.length,
                ),)
          ],
        ),
      ),
    );
  }
}
