import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/core/utlis/model/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  TransactionItem({super.key, required this.transactionModel});
  TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyle.StyleBold16,
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyle.StyleRegular16.copyWith(color: Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyle.StyleSemiBold20.copyWith(
              color: transactionModel.isWithdrawal
                  ? Color(0xFFF3735E)
                  : Color(0xFF7CD87A)),
        ),
      ),
    );
  }
}
