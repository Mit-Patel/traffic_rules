
class Rules{
  String title;
  final List <Rules>
    children;
  Rules(this.title,[this.children = const <Rules>[]]);

}
// This is the entire multi-level list displayed by this app
final List<Rules> data = <Rules>[
  Rules(
    'Driving vehicle exceeding permissible weight etc',
    <Rules>[
      Rules(
        'Section A0',
        <Rules>[
          Rules('Item A0.2'),
          Rules('Item A0.1'),
          Rules('Item A0.3'),
        ],
      ),
      Rules('Section A1'),
      Rules('Section A2'),
    ],
  ),
  // Second Row
  Rules('Chapter B', <Rules>[
    Rules('Section B0'),
    Rules('Section B1'),
  ]),
  Rules(
    'Chapter C',
    <Rules>[
      Rules('Section C0'),
      Rules('Section C1'),
      Rules(
        'Section C2',
        <Rules>[
          Rules('Item C2.0'),
          Rules('Item C2.1'),
          Rules('Item C2.2'),
          Rules('Item C2.3'),
        ],
      )
    ],
  ),
];
