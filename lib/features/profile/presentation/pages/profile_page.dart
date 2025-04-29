import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/core/utils/back_button_black.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';

class ProfilePage extends StatelessWidget {
  final ChatEntity user;
  const ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          23.kH,
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackButtonBlack(),
                Column(
                  children: [
                    Hero(
                      tag: "profileImgHero",
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: user.dp == ""
                            ? const AssetImage(profile)
                            : NetworkImage(user.dp),
                      ),
                    ),
                    7.kH,
                    Text(
                      user.name,
                      style: style.blackBold27,
                    ),
                    7.kH,
                    Text(
                      "+91 ${user.phno}",
                      style: style.blackMedium20,
                    )
                  ],
                ),
                InkWell(
                    onTap: () {
                      //  Navigator.pop(context);
                    },
                    child: const Icon(Icons.more_vert)),
              ],
            ),
          )
        ],
      )),
    );
  }
}
