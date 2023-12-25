import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MyApp(),
    enabled: true,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 20,
      width: 20,
      child: Center(
        child: Text(
          'data',
          style:
              TextStyle(fontSize: getResposivFontSize(context, fontsize: 16)),
        ),
      ),
    );
  }
}

double getResposivFontSize(BuildContext context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(context);
  // ignore: non_constant_identifier_names
  double ResponsivFontSize = scaleFactor * fontsize;
  double lowerLimit = fontsize * .8;
  double upperLimit = fontsize * 1.25;

  return ResponsivFontSize.clamp(lowerLimit, upperLimit);
}

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
