// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adaptiv_layout/fetuers/draower/model/listTileModel.dart';
import 'package:adaptiv_layout/core/utlis/images.dart';
import 'package:adaptiv_layout/fetuers/dashbord/widget/CustomListTile.dart';
import 'package:flutter/material.dart';
import 'package:adaptiv_layout/core/utlis/AppStyle.dart';

import 'drawer_item_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        scrollBehavior: ScrollBehavior(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 28, right: 20, top: 8, bottom: 8),
              child: Card(
                elevation: 0.0,
                color: Color(0xffFAFAFA),
                child: profileInfo(
                    title: 'Ahmad nazzal',
                    subtitel: 'naz131681@gmail.com',
                    leading: (Assets.imagesFrame),
                    titleStile: style.StyleBold16,
                    subTitleStyle: style.StyleRegular12),
              ),
            ),
          ),
          drawer_item_list(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              Expanded(child: SizedBox()),
              CustomListTile(
                  title: 'Settinges ',
                  leading: Assets.imagesSetting,
                  titleStile: style.StyleRegular16),
              CustomListTile(
                  title: 'Log out',
                  leading: Assets.imagesLogout,
                  titleStile: style.StyleRegular16),
              SizedBox(
                height: 48,
              )
            ]),
          )
        ],
      ),
    );
  }
}
