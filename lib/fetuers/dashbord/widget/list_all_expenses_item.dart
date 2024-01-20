import 'package:adaptiv_layout/fetuers/dashbord/model/ExpensesItemModel.dart';
import 'package:adaptiv_layout/fetuers/dashbord/widget/expensesitem.dart';
import 'package:flutter/material.dart';

import '../../../core/utlis/images.dart';

class ListAllExpensesItem extends StatefulWidget {
  ListAllExpensesItem({super.key});

  @override
  State<ListAllExpensesItem> createState() => _ListAllExpensesItemState();
}

class _ListAllExpensesItemState extends State<ListAllExpensesItem> {
  List<ExpensesItemModel> expenseslist = [
    ExpensesItemModel(
        price: r'$20,129',
        date: 'April 2022',
        image: Assets.imagesBalance,
        title: 'Balance'),
    ExpensesItemModel(
        price: r'$20,129',
        date: 'April 2022',
        image: Assets.imagesIncome,
        title: 'Income'),
    ExpensesItemModel(
        price: r'$20,129',
        date: 'April 2022',
        image: Assets.imagesExpenses,
        title: 'Expenses')
  ];
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: expenseslist.asMap().entries.map((e) {
        if (e.key == 1) {
          return Expanded(
              child: GestureDetector(
            onTap: () => changeSelect(e.key),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ExpensesItem(
                isActive: selectindex == e.key ? true : false,
                expensesModel: e.value,
              ),
            ),
          ));
        }
        return Expanded(
          child: GestureDetector(
            onTap: () => changeSelect(e.key),
            child: ExpensesItem(
              isActive: selectindex == e.key ? true : false,
              expensesModel: e.value,
            ),
          ),
        );
      }).toList(),
    );
  }

  changeSelect(int index) {
    setState(() {
      selectindex = index;
    });
  }
}
