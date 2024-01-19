// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adaptiv_layout/fetuers/dashbord/model/listTileModel.dart';
import 'package:adaptiv_layout/core/utlis/images.dart';
import 'package:adaptiv_layout/fetuers/dashbord/widget/CustomListTile.dart';
import 'package:flutter/material.dart';
import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'drawer_item_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  static const List<ListTileModel> listtile = [
    ListTileModel('Dashbore', Assets.imagesDashbord),
    ListTileModel('My Transaction', Assets.imagesMytransaction),
    ListTileModel('Statistics', Assets.imagesStatistics),
    ListTileModel('Wallet Account', Assets.imagesWallet2),
    ListTileModel('Invismant', Assets.imagesMyInvestments)
  ];
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
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
                    titleStile: stayl.StyleBold16,
                    subTitleStyle: stayl.StyleRegular12),
              ),
            ),
          ),
          drawer_item_list(listtile: listtile),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              Expanded(child: SizedBox()),
              CustomListTile(
                  title: 'Settinges ',
                  leading: Assets.imagesSetting,
                  titleStile: stayl.StyleRegular16),
              CustomListTile(
                  title: 'Log out',
                  leading: Assets.imagesLogout,
                  titleStile: stayl.StyleRegular16),
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
