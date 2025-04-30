import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';

class AboutTileWidget extends StatelessWidget {
  final ChatEntity user;
  const AboutTileWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    AppSize().init(context);
    return Container(
      decoration: const BoxDecoration(color: kWhite, boxShadow: [
        BoxShadow(
            color: kGrey5, blurRadius: 2, spreadRadius: 1, offset: Offset(0, 3))
      ]),
      width: AppSize.screenWidth,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20.0, bottom: 10, right: 10, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.about,
              style: style.blackMedium20,
            ),
            8.kH,
            Text(
              user.aboutUpdateDate,
              style: style.blackMedium16,
            )
          ],
        ),
      ),
    );
  }
}
