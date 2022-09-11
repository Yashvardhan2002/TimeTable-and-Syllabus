import 'package:flutter/material.dart';
import 'package:time_table_syllabus/days_screen.dart';
import 'package:time_table_syllabus/syllabus_screen.dart';
import 'days_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages =[
    {'page' :DaysScreen(), 'title': 'Time Table'},
    {'page' :Syllabus(), 'title': 'Syllabus'}
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index){
      setState((){
        _selectedPageIndex = index;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedPageIndex]['title'],
          style: TextStyle(fontFamily: 'Monts'),
        ),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.indigo,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Time Table',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Syllabus',
          ),
        ],
      ),
    );
  }
}

//
// bottom: TabBar(
// tabs: [
// Tab(icon: Icon(Icons.calendar_month), text: 'Time Table',),
// Tab(icon: Icon(Icons.book), text: 'Syllabus',),
// ],
// ),
// ),
