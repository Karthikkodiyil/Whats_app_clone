import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';

class ChatBarWidget extends StatelessWidget {
  final ChatEntity chat;
  const ChatBarWidget({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    AppStyle style = AppStyle();
    return Container(
      height: 70,
      width: AppSize.screenWidth,
      color: kWhite,
      child: Row(
        children: [
          5.kW,
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: kBlack,
                size: 25,
              )),
          10.kW,
          CircleAvatar(
            radius: 25,
            backgroundImage: chat.dp == ""
                ? const AssetImage(profile)
                : NetworkImage(chat.dp),
          ),
          15.kW,
          Text(
            chat.name,
            style: style.blackBold20,
          ),
          const Spacer(),
          const Icon(
            Icons.video_camera_back_outlined,
            size: 30,
          ),
          23.kW,
          const Icon(
            Icons.call_outlined,
            size: 28,
          ),
          12.kW,
          const Icon(
            Icons.more_vert,
            size: 30,
          ),
          10.kW
        ],
      ),
    );
  }
}
