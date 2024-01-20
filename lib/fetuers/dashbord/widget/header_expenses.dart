// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:flutter/material.dart';

class HeaderExpenses extends StatelessWidget {
  const HeaderExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Text(
            'All Expenses',
            style:
                style.StyleSemiBold20.copyWith(color: const Color(0xff064061)),
          ),
          const Expanded(child: SizedBox()),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Color(0xffF1F1F1),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Text(
                  "Month",
                  style: style.StyleMedium16.copyWith(
                      color: const Color(0xff064061)),
                ),
                const SizedBox(
                  width: 18,
                ),
                Transform.rotate(
                    angle: -1.57079633,
                    child: const Icon(Icons.arrow_back_ios_new_rounded))
              ],
            ),
          )
        ],
      ),
    );
  }
}
