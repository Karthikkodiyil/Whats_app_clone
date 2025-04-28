import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.chat,
  });

  final ChatEntity chat;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            15.kH,
            const CautionContainerWidget(),
            25.kH,
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: chat.messages.length,
                itemBuilder: (context, index) {
                  final message = chat.messages;
                  return message[index]["sendByMe"] == true
                      ? MeChatWidget(
                          msg: message[index]["msg"],
                        )
                      : HeChatWidget(
                          msg: message[index]["msg"],
                        );
                }),
          ],
        ),
      ),
    );
  }
}

class HeChatWidget extends StatelessWidget {
  final String msg;
  const HeChatWidget({
    super.key,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 17.0, bottom: 7),
        child: Container(
          constraints: BoxConstraints(maxWidth: AppSize.screenWidth * 0.65),
          decoration: BoxDecoration(
              color: kWhite, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12.0, right: 12, top: 8, bottom: 8),
            child: Text(
              msg,
              style: style.blackMedium16,
            ),
          ),
        ),
      ),
    );
  }
}

class MeChatWidget extends StatelessWidget {
  final String msg;
  const MeChatWidget({
    super.key,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();

    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 17.0, bottom: 7),
        child: Container(
          constraints: BoxConstraints(maxWidth: AppSize.screenWidth * 0.65),
          decoration: BoxDecoration(
              color: kChatBoxGreen, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12.0, right: 12, top: 8, bottom: 8),
            child: Text(
              msg,
              style: style.blackMedium16,
            ),
          ),
        ),
      ),
    );
  }
}

class CautionContainerWidget extends StatelessWidget {
  const CautionContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    return Container(
      decoration: BoxDecoration(
        color: cautionColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8, top: 8),
        child: Text(
          textAlign: TextAlign.center,
          "Messages and calls are end-to-end \n encrypted. Only people in this"
          "chat can read,\nliste to, or share them. Learn more.",
          style: style.blackMedium14,
        ),
      ),
    );
  }
}
