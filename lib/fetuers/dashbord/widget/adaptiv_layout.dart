// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AdaptivLayout extends StatelessWidget {
  const AdaptivLayout(
      {super.key,
      required this.PhoneLayout,
      required this.TabletLayout,
      required this.webLayout});
  final WidgetBuilder PhoneLayout, TabletLayout, webLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return PhoneLayout(context);
        } else if (constraints.maxWidth < 900) {
          return TabletLayout(context);
        } else {
          return webLayout(context);
        }
      },
    );
  }
}
