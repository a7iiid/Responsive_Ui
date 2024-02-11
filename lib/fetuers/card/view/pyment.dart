import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/fetuers/card/widget/card.dart';
import 'package:flutter/material.dart';

class Pyment extends StatelessWidget {
  const Pyment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My card',
              style: AppStyle.StyleSemiBold20.copyWith(
                color: Color(0xFF064060),
              )),
          const SizedBox(
            height: 20,
          ),
          MyCard()
        ],
      ),
    );
  }
}
