import 'package:adaptiv_layout/fetuers/dashbord/widget/customdrawer.dart';
import 'package:flutter/material.dart';

class DashbordWebLaout extends StatelessWidget {
  const DashbordWebLaout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Expanded(child: CustomDrawer())],
    );
  }
}
