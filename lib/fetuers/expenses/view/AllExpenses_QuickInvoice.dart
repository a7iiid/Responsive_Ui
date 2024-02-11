// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/fetuers/Quick_Invoice/view/quick_invoice.dart';
import 'package:adaptiv_layout/fetuers/expenses/model/ExpensesItemModel.dart';
import 'package:adaptiv_layout/fetuers/expenses/widget/header_expenses.dart';
import 'package:adaptiv_layout/fetuers/expenses/widget/list_all_expenses_item.dart';
import 'package:flutter/material.dart';

import '../../../core/utlis/images.dart';
import 'all_expenses.dart';

class AllExpenses_QuickInvoice extends StatelessWidget {
  AllExpenses_QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          AllExpenses(),
          const SizedBox(
            height: 24,
          ),
          QuickInvoice(),
        ],
      ),
    );
  }
}
