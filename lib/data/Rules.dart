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
final List<Rules> violationData = <Rules>[
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
  ]),
  Rules('Driving Dangerously', <SubRule>[
    SubRule(
        '1. Driving a motor vehicle at a speed which is dangerous to the public.',
        'Two-Three Wheelers: Rs. 1500\n\nLMV: Rs. 3000\n\nOther Vehicles: Rs. 5000'),
    SubRule(
        '2. Driving a motor vehicle in a manner which is dangerous to the public.',
        'Two-Three Wheelers: Rs. 1500\n\nLMV: Rs. 3000\n\nOther Vehicles: Rs. 5000'),
    SubRule(
        'NOTE: \n1. The documents produced in electronic form (Digilocker) shall be valid.\n2. The documents shall be produced within 15 days from the date of demand.',
        ''),
  ]),
  Rules('Allowing unauthorized person to drive vehicles', <SubRule>[
    SubRule('1. Two Wheelers', 'Rs. 2000'),
    SubRule('2. Other Vehicles', 'Rs. 3000'),
  ]),
  Rules('Driving Vehicle in contravention of Section 3 or Section 4', <SubRule>[
    SubRule('1. Drive vehicle without holding driving license.',
        'Two wheeler: Rs. 2000\n\nOther Vehicles: Rs. 3000'),
    SubRule(
        '2. Drive transport vehicle without holding transport authorization.',
        'Two wheeler: Rs. 2000\n\nOther Vehicles: Rs. 3000'),
    SubRule('3. Under age driver drives the vehicle.',
        'Two wheeler: Rs. 2000\n\nOther Vehicles: Rs. 3000'),
    SubRule(
        '4. Drive vehicle in contravention of the conditions of learning license.',
        'Two wheeler: Rs. 2000\n\nOther Vehicles: Rs. 3000'),
  ]),
  Rules('Whoever while driving a motor vehicle', <SubRule>[
    SubRule(
        '1. Sounds the horn needlessly or continuously or more than necessary to ensure safety.',
        'Rs. 1000'),
    SubRule(
        '2. Sounds the horn in an area with a traffic sign prohibiting the use of a horn, or	drives a motor vehicle which makes use of a cut -out by which exhaust gases are released other than through the silencer.',
        'Rs. 1000'),
  ]),
  Rules('Others', <SubRule>[
    SubRule('Failure to use safety belts while driving', 'Rs. 500'),
    SubRule('Violation of not wearing Helmet', 'Rs. 500'),
    SubRule(
        'Failure to allow free passage to emergency vehicles like ambulance, fire fighting vehicle, etc.',
        'Rs. 1000'),
  ]),
];
