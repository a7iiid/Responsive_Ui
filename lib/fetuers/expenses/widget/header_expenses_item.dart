// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderExpensesItem extends StatelessWidget {
  HeaderExpensesItem(
      {super.key, required this.image, this.backgroundcolor, this.imagecolor});
  Color? imagecolor, backgroundcolor;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundcolor ?? const Color(0xffFAFAFA)),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imagecolor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: imagecolor == null ? Color(0xff064061) : Colors.white,
          ),
        )
      ],
    );
  }
}
