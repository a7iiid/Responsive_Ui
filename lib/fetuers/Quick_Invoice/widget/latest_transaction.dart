import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/fetuers/Quick_Invoice/widget/latest_transaction_user.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Latest Transaction',
            style: AppStyle.StyleMedium16.copyWith(color: Color(0xFF064060)),
          ),
          const SizedBox(
            height: 12,
          ),
          LatestTransactionUser(),
          const Divider(
            color: Color(0xffF1F1F1),
            height: 48,
          )
        ],
      ),
    );
  }
}
