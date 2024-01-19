import 'package:adaptiv_layout/fetuers/dashbord/model/listTileModel.dart';
import 'package:adaptiv_layout/fetuers/dashbord/widget/CustomListTile.dart';
import 'package:flutter/material.dart';
import 'package:adaptiv_layout/core/utlis/AppStyle.dart';

class drawer_item_list extends StatefulWidget {
  const drawer_item_list({
    super.key,
    required this.listtile,
  });

  final List<ListTileModel> listtile;

  @override
  State<drawer_item_list> createState() => _drawer_item_listState();
}

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
              print(SelectIndex);
            });
          }
        },
        child: CustomListTile(
            title: widget.listtile[index].name,
            leading: widget.listtile[index].image,
            titleStile: SelectStyle(index, SelectIndex)),
      ),
      itemCount: widget.listtile.length,
    );
  }
}

TextStyle SelectStyle(int index, int SelectIndex) {
  if (index == SelectIndex)
    return stayl.StyleBold16;
  else
    return stayl.StyleRegular16;
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