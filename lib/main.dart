// ignore_for_file: prefer_const_constructors

import 'package:adaptiv_layout/fetuers/dashbord/view/dashbordWeb.dart';
import 'package:adaptiv_layout/fetuers/dashbord/widget/adaptiv_layout.dart';
import 'package:adaptiv_layout/fetuers/dashbord/widget/customdrawer.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'fetuers/dashbord/dashbordView.dart';
import 'fetuers/dashbord/widget/get_resposiv_font_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashbordView(),
    );
  }
}
