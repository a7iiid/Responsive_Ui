import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:flutter/material.dart';

class HeaderQuickInvoice extends StatelessWidget {
  const HeaderQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          const Text(
            'Quick Invoice',
            style: AppStyle.StyleMedum20,
          ),
          const Spacer(),
          Container(
            width: 48,
            height: 48,
            decoration: const ShapeDecoration(
              color: Color(0xffFAFAFA),
              shape: OvalBorder(),
            ),
            child: const Icon(
              Icons.add,
              size: 15,
              color: Color(
                0xff4EB7F2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
