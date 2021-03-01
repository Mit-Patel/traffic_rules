import 'package:flutter/material.dart';
import 'package:traffic_rules/components/DashboardCard.dart';
import 'package:traffic_rules/screens/EmergencyHelpline.dart';
import 'package:traffic_rules/screens/TrafficSign.dart';

import 'ViolationsAndFines.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    List items = [
      {
        "title": "Rules & Regulations",
        "subtitle": "All the significant traffic rules",
        "icon": "assets/images/warning.png",
        "method": () {}
      },
      {
        "title": "Violations & Fines",
        "subtitle": "Fines you will be paying on violation of rules",
        "icon": "assets/images/fine.png",
        "method": () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ViolationsAndFines()),
          );
        }
      },
      {
        "title": "Traffic Signs & Signals",
        "subtitle": "General Traffic Signs you must have knowledge about",
        "icon": "assets/images/trafficsign.png",
        "method": () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TrafficSign()),
          );
        }
      },
      {
        "title": "Emergency Helplines",
        "subtitle": "Get help at the time of emergency",
        "icon": "assets/images/helpline.png",
        "method": () {
          print("METHOD");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmergencyHelpline()),
          );
        }
      },
      {
        "title": "Documents Information",
        "subtitle": "Information about the documents you should keep with you",
        "icon": "assets/images/document.png",
        "method": () {}
      },
      {
        "title": "FAQs",
        "subtitle": "Frequently Asked Questions",
        "icon": "assets/images/faq.png",
        "method": () {}
      },
    ];
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Traffic Rules"),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 4 / 5,
          children: List.generate(items.length, (index) {
            return DashboardCard(
              items[index]["icon"],
              items[index]["title"],
              items[index]["subtitle"],
              onTap: () {
                items[index]["method"]();
              },
            );
          })),
    );
  }
}

class Class {
  IconData icon;
  String title, desc;

  Class(this.icon, this.title, this.desc);
}
