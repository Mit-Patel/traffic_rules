import 'package:flutter/material.dart';

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
      child: InkWell(
        splashColor: Theme.of(context).primaryColor.withAlpha(80),
        onTap: () {},
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
