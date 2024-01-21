import 'package:adaptiv_layout/core/utlis/model/user_info_model.dart';
import 'package:adaptiv_layout/fetuers/draower/widget/user_profile_info.dart';
import 'package:flutter/material.dart';

import '../../../core/utlis/AppStyle.dart';
import '../../../core/utlis/images.dart';

class LatestTransactionUser extends StatelessWidget {
  LatestTransactionUser({super.key});

  List<UserInfoModel> user = [
    UserInfoModel(
      ' Madrani Andi',
      'Madraniadi20@gmail',
      Assets.imagesFrame,
    ),
    UserInfoModel(
      'Josua Nunito',
      'Josh Nunito@gmail.com',
      Assets.imagesFrame,
    ),
    UserInfoModel(
      'Ahmad nazzal',
      'naz131681@gmail.com',
      Assets.imagesFrame,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: user.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserProfileInfo(item: user[index]));
        },
      ),
    );
  }
}
