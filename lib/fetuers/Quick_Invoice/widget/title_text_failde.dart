import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/fetuers/Quick_Invoice/widget/custom_text_feild.dart';
import 'package:flutter/material.dart';

class TitleTextFilde extends StatelessWidget {
  TitleTextFilde({super.key, required this.hint, required this.title});
  String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: AppStyle.StyleMedium16.copyWith(
              color: Color(0xFF064060),
            )),
        const SizedBox(
          height: 12,
        ),
        CustomTextFeild(
          hint: hint,
        )
      ],
    );
  }
}
