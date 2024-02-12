import 'package:adaptiv_layout/fetuers/card/pyment.dart';
import 'package:adaptiv_layout/fetuers/draower/widget/customdrawer.dart';
import 'package:adaptiv_layout/fetuers/expenses/view/AllExpenses_QuickInvoice.dart';
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
        Expanded(flex: 2, child: AllExpenses_QuickInvoice()),
        const Expanded(child: Pyment())
      ],
    );
  }
}
