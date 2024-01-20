import 'package:flutter/material.dart';
import 'package:adaptiv_layout/dashbordDesktop.dart';

import 'widget/adaptiv_layout.dart';

class DashbordView extends StatelessWidget {
  const DashbordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptivLayout(
        PhoneLayout: (BuildContext context) => const DashbordWebLaout(),
        TabletLayout: (BuildContext context) => const DashbordWebLaout(),
        webLayout: (BuildContext context) => const DashbordWebLaout(),
      ),
    );
  }
}
