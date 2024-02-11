import 'package:adaptiv_layout/core/utlis/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.title,
      required this.leading,
      required this.titleStile});
  final String title, leading;
  final TextStyle titleStile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 28),
      child: ListTile(
        leading: SvgPicture.asset(this.leading),
        title: Text(title, style: titleStile),
      ),
    );
  }
}
