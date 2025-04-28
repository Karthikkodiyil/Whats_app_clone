import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/chat_bar_widget.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/message_widget.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/send_msg_widget.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';

class ChatPage extends StatelessWidget {
  final ChatEntity chat;
  const ChatPage({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: AppSize.screenHeight,
        width: AppSize.screenWidth,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(whatsAppChatBg), fit: BoxFit.fill)),
        child: Column(
          children: [
            ChatBarWidget(
              chat: chat,
            ),
            MessageWidget(chat: chat),
           const SendMsgWidget()
          ],
        ),
      )),
    );
  }
}




