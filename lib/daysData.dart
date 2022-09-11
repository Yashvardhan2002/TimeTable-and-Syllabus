import 'package:flutter/material.dart';
import 'package:time_table_syllabus/syllabus_model.dart';
import 'package:time_table_syllabus/timeTable.dart';
import 'day.dart';
import 'timeTable.dart';

const Day_Data = const [
  Day(
    id: 'mon',
    title: 'Monday',
    color: Colors.purple,
  ),
  Day(
    id: 'tue',
    title: 'Tuesday',
    color: Colors.red,
  ),
  Day(
    id: 'wed',
    title: 'Wednesday',
    color: Colors.orange,
  ),
  Day(
    id: 'thu',
    title: 'Thursday',
    color: Colors.green,
  ),
  Day(
    id: 'fri',
    title: 'Friday',
    color: Colors.lightBlueAccent,
  ),
  Day(
    id: 'sat',
    title: 'Saturday',
    color: Colors.greenAccent,
  ),
];

const Day_Schedule = const [
  TimeTable(
    id: 'mon',
    title: 'Monday',
    schedule: [
      '9:40 - 10:30    Industrial Engineering',
      '10:30 - 11:20    Automation and Control',
      '11:20 - 12:10    EV/RAC',
      '12:10 - 1:00    Machine Design II',
      '2:00 - 4:30    Heat Transfer Lab G1',
    ],
  ),
  TimeTable(
    id: 'tue',
    title: 'Tuesday',
    schedule: [
      '8:50 - 9:40    Industrial Engineeering',
      '10:30 - 11:20    Heat and Mass Transfer',
      '11:20 - 12:10    Fluid Mechanics II',
      '12:10 - 1:00    EV/RAC',
    ],
  ),
  TimeTable(
    id: 'wed',
    title: 'Wednesday',
    schedule: [
      '8:00 - 8:50    Industrial Engineering',
      '11:20 - 12:10    Machine Desing II',
      '12:10 - 1:00    Fluid Mechanics II',
      '2:00 - 4:30    Machine Design Pratice',
    ],
  ),
  TimeTable(
    id: 'thu',
    title: 'Thursday',
    schedule: [
      '9:40 - 10:30    Industrial Engineering',
      '10:30 - 11:20    Automation and Control',
      '12:10 - 1:00    Machine Design II',
      '2:00 - 4:30    Heat Transfer Lab G2',
    ],
  ),
  TimeTable(
    id: 'fri',
    title: 'Friday',
    schedule: [
      '8:00 - 8:50    Automation and Control',
      '9:40 - 10:30    Heat and Mass Transfer',
      '10:30 - 11:20    EV/RAC',
      '11:20 - 12:10    Fluid Mechanics',
    ],
  ),
  TimeTable(
    id: 'sat',
    title: 'Saturday',
    schedule: [
      '8:00 - 8:50    Heat and Mass Transfer',
      '9:40 - 10:30    Automation and Control',
      '10:30 - 11:20    Machine Design II',
      '12:10 - 1:00    EV/RAC',
      '2:00 - 2:50    Heat and Mass Transfer'
    ],
  ),
];

const Syllabus_data_full = const [
  Syllabus_data(
    url: 'https://drive.google.com/file/d/1oem1NZHVNDS08ybCiYEeiPvZT_TMQCSO/view?usp=sharing',
    title: 'Automation and Control',
    color: Colors.purple,
  ),
  Syllabus_data(
    url: 'https://drive.google.com/file/d/1X-GLIbuBB4OZepkVht37IIZxCnLAvIDw/view?usp=sharing',
    title: 'Machine Design II',
    color: Colors.red,
  ),
  Syllabus_data(
    url: 'https://drive.google.com/file/d/1t4NDEycUH72oGUA7WBSw0zr1f4iIkAc9/view?usp=sharing',
    title: 'Fluid Mechanics II',
    color: Colors.orange,
  ),
  Syllabus_data(
    url: 'https://drive.google.com/file/d/18lAzsvoCRjDAGdxgAo2T6T0uyZP9FLVi/view?usp=sharing',
    title: 'Industrial Engineering',
    color: Colors.green,
  ),
  Syllabus_data(
    url: 'https://drive.google.com/file/d/1DsQjojS4Ch9W_vN_S_xVx82kZZnM-Rn0/view?usp=sharing',
    title: 'Heat and Mass Transfer',
    color: Colors.lightBlueAccent,
  ),
  Syllabus_data(
    url: 'https://drive.google.com/file/d/1ylep0kQKln7-unFyF44Isf058dIXG5YM/view?usp=sharing',
    title: 'Heat Transfer Lab',
    color: Colors.greenAccent,
  ),
  Syllabus_data(
    url: 'https://drive.google.com/file/d/1Yv-yCvpLBdLYn4-Att69Z5XONb9R5BHQ/view?usp=sharing',
    title: 'Machine Design Practice',
    color: Colors.blue,
  ),


];
