import 'package:adaptiv_layout/fetuers/dashbord/view/expenses.dart';
import 'package:adaptiv_layout/fetuers/dashbord/widget/customdrawer.dart';
import 'package:flutter/material.dart';

class DashbordWebLaout extends StatelessWidget {
  const DashbordWebLaout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        Expanded(flex: 2, child: AllExpenses()),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
