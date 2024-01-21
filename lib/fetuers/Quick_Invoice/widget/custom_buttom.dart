import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, this.backGroundColor, this.textColor, required this.text});
  Color? backGroundColor, textColor;
  String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor ?? const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          text,
          style: AppStyle.StyleSemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
