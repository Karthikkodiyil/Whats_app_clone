import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';

class ProfileActionRowWidget extends StatelessWidget {
  const ProfileActionRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _ActionBoxWidget(
          onTap: () {},
          title: 'Audio',
          icon: const Icon(
            Icons.call_outlined,
            size: 32,
            color: kPrimary,
          ),
        ),
        _ActionBoxWidget(
          onTap: () {},
          title: 'Video',
          icon: const Icon(
            Icons.video_camera_back_outlined,
            size: 32,
            color: kPrimary,
          ),
        ),
        _ActionBoxWidget(
          onTap: () {},
          title: 'Pay',
          icon: const Icon(
            Icons.currency_rupee_sharp,
            size: 32,
            color: kPrimary,
          ),
        ),
        _ActionBoxWidget(
          onTap: () {},
          title: 'Search',
          icon: const Icon(
            Icons.search,
            size: 32,
            color: kPrimary,
          ),
        )
      ],
    );
  }
}

class _ActionBoxWidget extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final Icon icon;
  const _ActionBoxWidget({
    required this.onTap,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: kGrey),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              title,
              style: style.blackSemi17,
            )
          ],
        ),
      ),
    );
  }
}
