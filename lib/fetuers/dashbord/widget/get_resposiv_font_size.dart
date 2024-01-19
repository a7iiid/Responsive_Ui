// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'get_scale_factor.dart';

double getResposivFontSize(BuildContext context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(context);
  // ignore: non_constant_identifier_names
  double ResponsivFontSize = scaleFactor * fontsize;
  double lowerLimit = fontsize * .8;
  double upperLimit = fontsize * 1.25;

  return ResponsivFontSize.clamp(lowerLimit, upperLimit);
}
