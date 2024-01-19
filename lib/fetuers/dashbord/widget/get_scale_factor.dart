import 'package:flutter/material.dart';

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 70;
  } else {
    return width / 1000;
  }
}
