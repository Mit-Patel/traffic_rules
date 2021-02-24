import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:google_fonts/google_fonts.dart';
import 'package:traffic_rules/screens/ViolationsandFines.dart';
=======
>>>>>>> 32ac2a9456cd976b0b102e6b06aab5c0206814fa

class DashboardCard extends StatefulWidget {
  final IconData _icon;
  final String _title, _description;
  final VoidCallback onTap;

  const DashboardCard(this._icon, this._title, this._description,
      {Key key, this.onTap})
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
          widget.onTap();
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
                style: GoogleFonts.lato(fontSize: 20.0,fontWeight: FontWeight.w700,),
              ),
              Divider(
                thickness: 1.0,
              ),
              Expanded(
                child: Text(
                  widget._description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(color: Colors.grey,fontWeight: FontWeight.w500,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
