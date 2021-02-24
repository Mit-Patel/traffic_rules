class SubRule {
  final String subRule;
  final String fine;

  SubRule(this.subRule, this.fine);
}

class Rules {
  String title;
  final List<SubRule> children;

  Rules(this.title, [this.children = const <SubRule>[]]);
}

// This is the entire multi-level list displayed by this app
final List<Rules> data = <Rules>[
  Rules(
    'Driving vehicle exceeding permissible weight etc',
    <SubRule>[
      SubRule(
          '1. Whoever drives or causes or allows to be driven a transport vehicle in contravention of the conditions of permit prescribed by State or Regional Transport Authorities under sub-section 1 of section 113 prohibiting or restricting the use of such vehicle in area or route',
          "Rs. 5000"),
      SubRule(
          '2. Driving vehicle or cause or allow to be driven in any public place which is not fitted with pneumatic tyres.',
          "Rs. 5000"),
      SubRule(
          '3. Driving vehicle or cause or allow to be driven in any public place-',
          "Rs. 5000 + additional Rs. 1000 per ton"),
      SubRule(
          '4. the unladen weight of which exceeds the unladen weight specified in the certificate of registration of the vehicle.',
          'Rs. 5000'),
      SubRule(
          '5. The laden weight of which exceeds the gross vehicle weight specified in the certificate of registration of the vehicle.',
          'Rs. 5000'),
    ],
  ),
  Rules('Using vehicle without registration', <SubRule>[
    SubRule(
        '1. Whoever drives or causes or allows to be driven a motor vehicle   carrying a registration mark displayed in  contravention of  rule 50 or rule 51 of the Central Motor Vehicles Rules, 1989 in public place.',
        'Rs. 300'),
    SubRule('2. Two wheeler vehicle', 'Rs. 400'),
    SubRule('3. Three wheeler', 'Rs. 500'),
    SubRule('4. Light Motor Vehicle', 'Rs. 1000'),
    SubRule('5. Four Wheels Vehicle', 'Rs. 1000'),
    SubRule('6. Other Vehicle', 'Rs. 5000'),
  ])
];
