import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traffic_rules/screens/ViolationsandFines.dart';

class DashboardCard extends StatefulWidget {
  final String _icon;
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
      elevation:5,
      //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),

      color: Colors.white,
      child: InkWell(
        splashColor: Colors.amberAccent.withAlpha(80),
        onTap: () {
          widget.onTap();
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image(image: AssetImage(widget._icon),height: 60,width: 60,),
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
