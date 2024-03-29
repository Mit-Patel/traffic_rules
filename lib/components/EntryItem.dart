import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traffic_rules/data/Rules.dart';

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
    return Card(
      elevation: 5,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpansionTile(
          key: PageStorageKey<Rules>(root),
          title: Text(root.title,style: GoogleFonts.lato(fontWeight: FontWeight.w700,),),
          children: root.children.map<Widget>((subRule) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text(subRule.subRule,style: GoogleFonts.lato(),),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(subRule.fine,style: GoogleFonts.lato(),),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
