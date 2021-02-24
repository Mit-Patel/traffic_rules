import 'package:flutter/material.dart';
import 'package:traffic_rules/components/DashboardCard.dart';

import 'ViolationsAndFines.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> icons = [
    'assets/images/warning.png',
    'assets/images/fine.png',
    'assets/images/trafficsign.png',
    'assets/images/helpline.png',
    'assets/images/document.png',
    'assets/images/faq.png',

  ];
  List cards = [
    ["Rules & Regulations", "All the significant traffic rules"],
    ["Violations & Fines", "Fines you will be paying on violation of rules"],
    [
      "Traffic Signs & Signals",
      "General Traffic Signs you must have knowledge about"
    ],
    ["Emergency Helplines", "Get help at the time of emergency"],
    [
      "Documents Information",
      "Information about the documents you should keep with you"
    ],
    ["FAQs", "Frequently Asked Questions"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Traffic Rules"),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 4 / 5,
          children: List.generate(cards.length, (index) {
            return DashboardCard(
              icons[index],
              cards[index][0],
              cards[index][1],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViolationsAndFines()),
                );
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
