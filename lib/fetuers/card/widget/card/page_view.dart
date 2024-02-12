import 'package:adaptiv_layout/fetuers/card/widget/card/card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({super.key, required this.pageController});
  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) => MyCard()));
  }
}
