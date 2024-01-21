import 'package:adaptiv_layout/fetuers/Quick_Invoice/widget/custom_text_feild.dart';
import 'package:adaptiv_layout/fetuers/Quick_Invoice/widget/header_quick_invoice.dart';
import 'package:adaptiv_layout/fetuers/Quick_Invoice/widget/latest_transaction.dart';
import 'package:adaptiv_layout/fetuers/Quick_Invoice/widget/quick_invoice_input.dart';
import 'package:adaptiv_layout/fetuers/Quick_Invoice/widget/title_text_failde.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderQuickInvoice(),
          const SizedBox(
            height: 24,
          ),
          const LatestTransaction(),
          QuickInvoiceInput()
        ],
      ),
    );
  }
}
