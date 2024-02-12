import 'package:adaptiv_layout/core/utlis/model/transaction_model.dart';
import 'package:adaptiv_layout/fetuers/card/widget/Transaction/transaction_item.dart';
import 'package:flutter/material.dart';

class MyTransactionList extends StatelessWidget {
  MyTransactionList();

  List<TransactionModel> transactionList = [
    TransactionModel(
        date: "13 Apr, 2022 ",
        title: "Cash Withdrawal",
        amount: "\$20,129",
        isWithdrawal: true),
    TransactionModel(
        date: "13 Apr, 2022 ",
        title: "Landing Page project",
        amount: "\$20,129",
        isWithdrawal: false),
    TransactionModel(
        date: "13 Apr, 2022 ",
        title: "Juni Mobile App project",
        amount: "\$20,129",
        isWithdrawal: false)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactionList.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return TransactionItem(
          transactionModel: transactionList[index],
        );
      },
    );
  }
}
