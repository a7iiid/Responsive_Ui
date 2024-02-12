import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHedar extends StatelessWidget {
  const TransactionHistoryHedar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History',
            style: AppStyle.StyleSemiBold20.copyWith(color: Color(0xFF064060))),
        Text('See all', style: AppStyle.StyleMedium16)
      ],
    );
  }
}
