import 'package:flutter/material.dart';
import 'package:traffic_rules/screens/ViolationsandFines.dart';

class DashboardCard extends StatefulWidget {
  final IconData _icon;
  final String _title, _description;

  const DashboardCard(this._icon, this._title, this._description, {Key key})
      : super(key: key);

  @override
  _DashboardCardState createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent,
      child: InkWell(
        splashColor: Colors.white.withAlpha(80),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ExpansionTileDemo()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(widget._icon, size: 50.0),
              SizedBox(
                height: 10.0,
              ),
              Text(
                widget._title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
              Divider(
                thickness: 1.0,
              ),
              Expanded(
                child: Text(
                  widget._description,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
