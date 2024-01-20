import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/fetuers/expenses/model/ExpensesItemModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../expenses/widget/in_active_&active_item_expenses.dart';

class ExpensesItem extends StatelessWidget {
  ExpensesItem(
      {super.key, required this.expensesModel, required this.isActive});
  ExpensesItemModel expensesModel;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItemExpenses(expensesModel: expensesModel)
        : InActiveItemExpenses(expensesModel: expensesModel);
  }
}
