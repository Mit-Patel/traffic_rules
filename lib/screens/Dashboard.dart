import 'package:flutter/material.dart';
import 'package:traffic_rules/components/DashboardCard.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<IconData> icons = [
    Icons.warning,
    Icons.attach_money,
    Icons.drive_eta,
    Icons.live_help,
    Icons.local_gas_station,
    Icons.insert_drive_file,
    Icons.autorenew,
    Icons.rss_feed,
    Icons.help_outline,
  ];
  List cards = [
    ["Rules & Regulations", "All the significant traffic rules"],
    ["Violations & Fines", "Fines you will be paying on violation of rules"],
    [
      "Traffic Signs & Signals",
      "General Traffic Signs you must have knowledge about"
    ],
    ["Emergency Helplines", "Get help at the time of emergency"],
    ["Fuel Prices", "Latest Fuel & Gas Prices updates"],
    [
      "Documents Information",
      "Information about the documents you should keep with you"
    ],
    [
      "Driving License Process",
      "Step by step procedure to issue a Driving License"
    ],
    ["News Feed", "Latest driving & transport news"],
    ["FAQs", "Frequently Asked Questions"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 4 / 5,
          children: List.generate(cards.length, (index) {
            return DashboardCard(
                icons[index], cards[index][0], cards[index][1]);
          })),
    );
  }
}

class Class {
  IconData icon;
  String title, desc;

  Class(this.icon, this.title, this.desc);
}
