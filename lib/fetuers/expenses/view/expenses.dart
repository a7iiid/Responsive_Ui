// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/fetuers/expenses/model/ExpensesItemModel.dart';
import 'package:adaptiv_layout/fetuers/expenses/widget/header_expenses.dart';
import 'package:adaptiv_layout/fetuers/expenses/widget/list_all_expenses_item.dart';
import 'package:flutter/material.dart';

import '../../../core/utlis/images.dart';

class AllExpenses extends StatelessWidget {
  AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffFFFFFF)),
          child: Column(
            children: [
              const HeaderExpenses(),
              const SizedBox(
                height: 16,
              ),
              ListAllExpensesItem(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
