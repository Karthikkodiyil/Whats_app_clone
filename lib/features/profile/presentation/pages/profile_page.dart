import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/core/utils/back_button_black.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';
import 'package:whatsapp_clone/features/profile/presentation/widget/about_tile_widget.dart';
import 'package:whatsapp_clone/features/profile/presentation/widget/adv_option_tile_widget.dart';
import 'package:whatsapp_clone/features/profile/presentation/widget/option_tile_widget.dart';
import 'package:whatsapp_clone/features/profile/presentation/widget/profile_action_row_widget.dart';
import 'package:whatsapp_clone/features/profile/presentation/widget/setting_tile_widget.dart';

class ProfilePage extends StatelessWidget {
  final ChatEntity user;
  const ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    AppStyle style = AppStyle();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: kWhite, boxShadow: [
                BoxShadow(
                    color: kGrey5,
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: Offset(0, 3))
              ]),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 18),
                child: Column(
                  children: [
                    23.kH,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BackButtonBlack(),
                        Column(
                          children: [
                            Hero(
                              tag: "profileImgHero",
                              child: CircleAvatar(
                                radius: 85,
                                backgroundImage: user.dp == ""
                                    ? const AssetImage(profile)
                                    : NetworkImage(user.dp),
                              ),
                            ),
                            3.kH,
                            Text(
                              user.name,
                              style: style.blackBold27,
                            ),
                            1.kH,
                            Text(
                              "+91 ${user.phno}",
                              style: style.blackMedium20,
                            )
                          ],
                        ),
                        InkWell(
                            onTap: () {}, child: const Icon(Icons.more_vert)),
                      ],
                    ),
                    15.kH,
                    const ProfileActionRowWidget(),
                  ],
                ),
              ),
            ),
            18.kH,
            AboutTileWidget(
              user: user,
            ),
            18.kH,
            const OptionTileWidget(),
            18.kH,
            const AdvOptionTileWidget(),
            18.kH,
            SettingTileWidget(name: user.name),
            35.kH
          ],
        ),
      )),
    );
  }
}


