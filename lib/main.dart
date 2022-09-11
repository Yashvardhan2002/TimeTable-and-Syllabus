import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_table_syllabus/tabs_screen.dart';
import 'device_orientation/device_orientation_demo.dart';
import 'package:time_table_syllabus/day_item.dart';
import 'package:time_table_syllabus/day_schedule_screen.dart';
import 'days_screen.dart';

void main() {

  // Step 2
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Time Table A3MB",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.green,
        canvasColor: Colors.white,
        fontFamily: 'Pop',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),

            ),
      ),
      // home: DaysScreen(),
      routes: {
        '/': (ctx) => TabsScreen(),
        DaysSchedule.routeName: (ctx) => DaysSchedule(),

      },
    );
  }
}
