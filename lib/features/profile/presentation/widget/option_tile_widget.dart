import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';

class OptionTileWidget extends StatelessWidget {
  const OptionTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    AppStyle style = AppStyle();

    return Container(
      decoration: const BoxDecoration(color: kWhite, boxShadow: [
        BoxShadow(
            color: kGrey5, blurRadius: 2, spreadRadius: 1, offset: Offset(0, 3))
      ]),
      width: AppSize.screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15),
        child: Column(
          children: [
            _OptionWidget(
              title: 'Notofications',
              icon: const Icon(
                Icons.notifications_outlined,
                color: kBlack,
                size: 35,
              ),
              onTap: () {},
            ),
            19.kH,
            _OptionWidget(
              icon: const Icon(
                Icons.image_outlined,
                color: kBlack,
                size: 30,
              ),
              mediaVisibility: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Media visibility",
                    style: style.blackBold20,
                  ),
                  const Text("Off")
                ],
              ),
              onTap: () {},
            ),
            19.kH,
            _OptionWidget(
              title: 'Kept message',
              icon: const Icon(
                Icons.bookmark_outline,
                color: kBlack,
                size: 35,
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}

class _OptionWidget extends StatelessWidget {
  final String? title;
  final Icon icon;
  final Widget? mediaVisibility;
  final void Function()? onTap;
  const _OptionWidget({
    this.title,
    required this.icon,
    this.mediaVisibility,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();

    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          25.kW,
          icon,
          25.kW,
          mediaVisibility != null
              ? mediaVisibility!
              : Text(
                  title!,
                  style: style.blackBold20,
                )
        ],
      ),
    );
  }
}
