import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';

class SettingTileWidget extends StatelessWidget {
  final String name;
  const SettingTileWidget({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Container(
      decoration: const BoxDecoration(color: kWhite, boxShadow: [
        BoxShadow(
            color: kGrey5, blurRadius: 2, spreadRadius: 1, offset: Offset(0, 3))
      ]),
      width: AppSize.screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
        child: Column(
          children: [
            const _TileWidget(
              title: 'Add to Favorites',
              icon: Icons.favorite_outline,
            ),
            19.kH,
            const _TileWidget(
              title: 'Add to list',
              icon: Icons.contact_page_outlined,
            ),
            19.kH,
            _TileWidget(
              title: 'Bloc $name',
              icon: Icons.block,
              isRed: true,
            ),
            19.kH,
            _TileWidget(
              title: 'Report $name',
              icon: Icons.thumb_down_outlined,
              isRed: true,
            )
          ],
        ),
      ),
    );
  }
}

class _TileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isRed;
  const _TileWidget({
    required this.title,
    this.isRed = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    return Row(
      children: [
        Icon(
          icon,
          size: 35,
          color: isRed ? kRed : kBlack,
        ),
        25.kW,
        Text(
          title,
          style: isRed ? style.redSemi20 : style.blackMedium20,
        )
      ],
    );
  }
}
