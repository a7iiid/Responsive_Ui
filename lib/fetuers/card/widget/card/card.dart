import 'package:adaptiv_layout/core/utlis/AppStyle.dart';
import 'package:adaptiv_layout/core/utlis/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(image: AssetImage(Assets.imagesCard)),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Text(
              'Name card',
              style: AppStyle.StyleRegular16.copyWith(color: Colors.white),
            ),
            subtitle: Text(
              'Syah Bandi',
              style: AppStyle.StyleMedum20.copyWith(color: Colors.white),
            ),
            trailing: SvgPicture.asset(Assets.imagesGallery),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('0918 8124 0042 8129',
                    style:
                        AppStyle.StyleSemiBold24.copyWith(color: Colors.white)),
                const SizedBox(
                  height: 12,
                ),
                Text('12/20 - 124',
                    style:
                        AppStyle.StyleRegular16.copyWith(color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(
            height: 27,
          )
        ]),
      ),
    );
  }
}
