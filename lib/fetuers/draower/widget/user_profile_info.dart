import 'package:adaptiv_layout/core/utlis/model/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utlis/AppStyle.dart';

class UserProfileInfo extends StatelessWidget {
  UserProfileInfo({
    super.key,
    required this.item,
  });
  UserInfoModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.leading),
      title: Text(
        item.title,
        style: AppStyle.StyleBold16,
      ),
      subtitle: Text(
        item.subtitle,
        style: AppStyle.StyleRegular12,
      ),
    );
  }
}
