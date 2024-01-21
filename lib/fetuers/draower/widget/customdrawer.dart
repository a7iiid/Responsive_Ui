// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adaptiv_layout/core/utlis/model/user_info_model.dart';
import 'package:adaptiv_layout/fetuers/draower/model/listTileModel.dart';
import 'package:adaptiv_layout/core/utlis/images.dart';
import 'package:adaptiv_layout/fetuers/draower/widget/CustomListTile.dart';
import 'package:flutter/material.dart';
import 'package:adaptiv_layout/core/utlis/AppStyle.dart';

import '../../draower/widget/drawer_item_list.dart';
import 'user_profile_info.dart';

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
                child: UserProfileInfo(
                  item: UserInfoModel(
                    'Ahmad nazzal',
                    'naz131681@gmail.com',
                    Assets.imagesFrame,
                  ),
                ),
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
                  titleStile: AppStyle.StyleRegular16),
              CustomListTile(
                  title: 'Log out',
                  leading: Assets.imagesLogout,
                  titleStile: AppStyle.StyleRegular16),
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
