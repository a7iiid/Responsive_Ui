// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:adaptiv_layout/fetuers/card/widget/card/custom_dote.dart';

class DoteIndecater extends StatelessWidget {
  const DoteIndecater({
    Key? key,
    required this.currentPage,
  }) : super(key: key);
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 7.0, top: 19),
                child: CustomDote(isActive: index == currentPage),
              )),
    );
  }
}
