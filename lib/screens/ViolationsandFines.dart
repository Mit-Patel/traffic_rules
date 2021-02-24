import 'package:flutter/material.dart';
import 'package:traffic_rules/components/EntryItem.dart';
import 'package:traffic_rules/data/Rules.dart';

class ViolationsAndFines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Violations and Fines'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
        ),
      ),
    );
  }
}
