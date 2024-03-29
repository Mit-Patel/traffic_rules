import 'package:flutter/material.dart';
import 'package:traffic_rules/components/EntryItem.dart';
import 'package:traffic_rules/data/Rules.dart';

class ViolationsAndFines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Violations & Fines'),
      ),
      body: ListView.builder(
        itemCount: violationData.length,
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(violationData[index]),
      ),
    );
  }
}
