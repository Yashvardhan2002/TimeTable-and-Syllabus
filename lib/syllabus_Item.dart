import 'package:flutter/material.dart';
import 'daysData.dart';
import 'package:url_launcher/url_launcher.dart';



class Syllabus_Item extends StatelessWidget {

  final String url;
  final String title;
  final Color color;


  Syllabus_Item(this.url, this.title, this.color);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async{

        if(await canLaunch(url)) launch(url);
      },
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
