// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/fetuers/expenses/model/ExpensesItemModel.dart';

import 'header_expenses_item.dart';

class InActiveItemExpenses extends StatelessWidget {
  const InActiveItemExpenses({
    super.key,
    required this.expensesModel,
  });

  final ExpensesItemModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          HeaderExpensesItem(image: expensesModel.image),
          const SizedBox(
            height: 32,
          ),
          Text(
            expensesModel.title,
            style:
                style.StyleSemiBold16.copyWith(color: const Color(0xff064061)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            expensesModel.date,
            style: style.StyleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            expensesModel.price,
            style: style.StyleSemiBold24,
          ),
        ]),
      ),
    );
  }
}

class ActiveItemExpenses extends StatelessWidget {
  ActiveItemExpenses({
    Key? key,
    required this.expensesModel,
  }) : super(key: key);
  final ExpensesItemModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff4EB7F2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          HeaderExpensesItem(
            image: expensesModel.image,
            imagecolor: Colors.white,
            backgroundcolor: Color(0xffFFFFFFFF).withOpacity(.1),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(expensesModel.title,
              style: style.StyleSemiBold16.copyWith(color: Colors.white)),
          const SizedBox(
            height: 8,
          ),
          Text(
            expensesModel.date,
            style: style.StyleRegular14.copyWith(color: Color(0xFFFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            expensesModel.price,
            style: style.StyleSemiBold24.copyWith(color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
