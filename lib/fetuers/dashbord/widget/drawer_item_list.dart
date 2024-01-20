import 'package:adaptiv_layout/fetuers/dashbord/model/listTileModel.dart';
import 'package:adaptiv_layout/fetuers/dashbord/widget/CustomListTile.dart';
import 'package:flutter/material.dart';
import 'package:adaptiv_layout/core/utlis/AppStyle.dart';

import '../../../core/utlis/images.dart';

class drawer_item_list extends StatefulWidget {
  const drawer_item_list({
    super.key,
  });

  @override
  State<drawer_item_list> createState() => _drawer_item_listState();
}

const List<ListTileModel> listtile = [
  ListTileModel('Dashbore', Assets.imagesDashbord),
  ListTileModel('My Transaction', Assets.imagesMytransaction),
  ListTileModel('Statistics', Assets.imagesStatistics),
  ListTileModel('Wallet Account', Assets.imagesWallet2),
  ListTileModel('Invismant', Assets.imagesMyInvestments)
];

class _drawer_item_listState extends State<drawer_item_list> {
  @override
  int SelectIndex = 0;
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (index != SelectIndex) {
            setState(() {
              SelectIndex = index;
            });
          }
        },
        child: CustomListTile(
            title: listtile[index].name,
            leading: listtile[index].image,
            titleStile: SelectStyle(index, SelectIndex)),
      ),
      itemCount: listtile.length,
    );
  }
}

TextStyle SelectStyle(int index, int SelectIndex) {
  if (index == SelectIndex)
    return style.StyleBold16;
  else
    return style.StyleRegular16;
}
// CustomListTile(
//               title: 'Dashbore',
//               leading: Assets.imagesDashbord,
//               titleStile: stayl.StyleBold16),
//           CustomListTile(
//               title: 'My Transaction',
//               leading: Assets.imagesMytransaction,
//               titleStile: stayl.StyleRegular16),
//           CustomListTile(
//               title: 'Statistics',
//               leading: Assets.imagesStatistics,
//               titleStile: stayl.StyleRegular16),
//           CustomListTile(
//               title: 'Wallet Account ',
//               leading: Assets.imagesWallet2,
//               titleStile: stayl.StyleRegular16),
//           CustomListTile(
//               title: 'Invismant',
//               leading: Assets.imagesMyInvestments,
//               titleStile: stayl.StyleRegular16),