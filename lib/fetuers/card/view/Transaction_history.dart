import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/fetuers/card/widget/Transaction/heder.dart';
import 'package:adaptiv_layout/fetuers/card/widget/Transaction/my_transactionList.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHedar(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyle.StyleMedium16.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        MyTransactionList(),
      ],
    );
  }
}
