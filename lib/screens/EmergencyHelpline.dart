import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyHelpline extends StatefulWidget {
  @override
  _EmergencyHelplineState createState() => _EmergencyHelplineState();
}

class _EmergencyHelplineState extends State<EmergencyHelpline> {
  final List data = [
    {"title": "Police", "number": "101"},
    {"title": "Fire Station", "number": "101"},
    {"title": "Fire Station", "number": "2414139"},
    {"title": "Ambulance", "number": "108"},
    {"title": "Ambulance (SHABVAHINI)", "number": "0261 2414139"},
    {"title": "Ambulance (SHABVAHINI)", "number": "0261 2414195"},
    {"title": "Blood Bank", "number": "1910"},
    {"title": "Traffic Control", "number": "103"},
    {"title": "Child Helpline", "number": "1098"},
    {"title": "Women Helpline", "number": "181"},
    {"title": "Women Helpline", "number": "1091"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Emergency Helplines'),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index]["title"],
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            data[index]["number"],
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.phone),
                      color: Colors.green,
                      onPressed: () async {
                        var url = 'tel:' + data[index]['number'];
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'Error while calling! Please try again...'),
                            backgroundColor: Colors.red[600],
                          ));
                        }
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      icon: Icon(Icons.copy),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Clipboard.setData(
                                new ClipboardData(text: data[index]['number']))
                            .then((value) =>
                                Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text('Helpline Number Copied!'),
                                  backgroundColor: Colors.green[600],
                                )));
                      },
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
/*

class EmergencyHelpline extends StatelessWidget {


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
        title: const Text('Emergency Helplines'),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Expanded(
                          child: Text(
                        data[index]["title"],
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                      Expanded(
                          child: Text(
                        data[index]["number"],
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      )),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.phone),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                ],
              ),
            );
          }),
    );
  }
}
*/
