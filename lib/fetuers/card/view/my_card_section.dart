import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/fetuers/card/widget/card/dote_indecater.dart';
import 'package:adaptiv_layout/fetuers/card/widget/card/page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card',
            style: AppStyle.StyleSemiBold20.copyWith(
              color: Color(0xFF064060),
            )),
        const SizedBox(
          height: 20,
        ),
        CustomPageView(pageController: pageController),
        DoteIndecater(currentPage: currentPageIndex),
      ],
    );
  }
}
