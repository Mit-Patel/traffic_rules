import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Violations and Fines'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => EntryItem(
            data[index],
          ),
        ),
      ),
    );
  }
}

class Rules{
  String title;
  final List <Rules>
  children;
  Rules(this.title,[this.children = const <Rules>[]]);

}
// This is the entire multi-level list displayed by this app
final List<Rules> data = <Rules>[

  Rules('Driving vehicle exceeding permissible weight etc', <Rules>[
    Rules('1.    Whoever drives or causes or allows to be driven a transport vehicle in contravention of the conditions of permit prescribed by State or Regional Transport Authorities under sub-section 1 of section 113 prohibiting or restricting the use of such vehicle in area or route'),
    Rules('2.    Driving vehicle or cause or allow to be driven in any public place which is not fitted with pneumatic tyres.'),
    Rules('3.    Driving vehicle or cause or allow to be driven in any public place-'),
    Rules('4.    the unladen weight of which exceeds the unladen weight specified in the certificate of registration of the vehicle,'),
    Rules('5.    The laden weight of which exceeds the gross vehicle weight specified in the certificate of registration of the vehicle.'),
  ],
    
  ),
  Rules('Using vehicle without registration',
  <Rules>[
    Rules('1.    Whoever drives or causes or allows to be driven a motor vehicle   carrying a registration mark displayed in  contravention of  rule 50 or rule 51 of the Central Motor Vehicles Rules, 1989 in public place.'),
    Rules('2.    Two wheeler vehicle'),
    Rules('3.    Three wheeler'),
    Rules('4.    Light Motor Vehicle'),
  ])
];
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Rules entry;

  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(Rules root) {

    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Rules>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}