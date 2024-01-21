import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({super.key, required this.hint});
  String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          //hoverColor: const Color(0xFFFAFAFA),
          hintText: hint,
          hintStyle: AppStyle.StyleRegular16.copyWith(
            color: Color(0xFFAAAAAA),
          ),
          border: bordar(),
          enabledBorder: bordar(),
          focusedBorder: bordar()),
    );
  }

  OutlineInputBorder bordar() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: const Color(0xFFFAFAFA),
      ),
    );
  }
}
