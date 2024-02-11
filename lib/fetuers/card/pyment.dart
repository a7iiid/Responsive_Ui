import 'package:adaptiv_layout/fetuers/card/view/my_card_section.dart';

import 'package:flutter/material.dart';

class Pyment extends StatelessWidget {
  const Pyment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [MyCardSection()],
        ));
  }
}
