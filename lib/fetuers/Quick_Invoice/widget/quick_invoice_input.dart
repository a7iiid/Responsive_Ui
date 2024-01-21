import 'package:adaptiv_layout/fetuers/Quick_Invoice/widget/custom_buttom.dart';
import 'package:adaptiv_layout/fetuers/Quick_Invoice/widget/title_text_failde.dart';
import 'package:flutter/material.dart';

class QuickInvoiceInput extends StatelessWidget {
  QuickInvoiceInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextFilde(
                    hint: 'Customer name', title: 'Type customer name')),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextFilde(
                    hint: 'Type customer email', title: 'Customer Email')),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextFilde(
                    hint: 'Type customer name', title: 'Item name')),
            const SizedBox(
              width: 16,
            ),
            Expanded(child: TitleTextFilde(hint: 'USD', title: 'Item mount')),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: "Add more details",
                backGroundColor: Colors.white,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                text: 'Send Money',
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
