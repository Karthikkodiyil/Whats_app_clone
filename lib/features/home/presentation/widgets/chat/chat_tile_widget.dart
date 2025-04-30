import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/chat/presentation/pages/chat_page.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_state.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      List<ChatEntity> chatList = state.chatList;
      return Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatPage(
                                chat: chatList[index],
                              )));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: chatList[index].dp == ""
                        ? const AssetImage(profile)
                        : NetworkImage(chatList[index].dp),
                  ),
                  subtitle: Row(
                    children: [
                      chatList[index].messages.last["status"] == "seen"
                          ? const Icon(
                              Icons.done_all,
                              color: kBlue,
                              size: 23,
                            )
                          : chatList[index].messages.last["status"] ==
                                  "delivered"
                              ? const Icon(
                                  Icons.done_all,
                                  size: 23,
                                )
                              : chatList[index].messages.last["status"] ==
                                      "send"
                                  ? const Icon(
                                      Icons.check,
                                      size: 21,
                                    )
                                  : const SizedBox(),
                      5.kW,
                      Text(
                        chatList[index].messages.last["msg"],
                        style: style.blackMedium14,
                      ),
                    ],
                  ),
                  title: Text(
                    chatList[index].name,
                    style: style.blackSemi17,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chatList[index].messages.last["time"],
                        style: style.blackRegular12,
                      ),
                      5.kH,
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: chatList[index].noOfUnreadMsg == "0"
                                ? kWhite
                                : kPrimary,
                            borderRadius: BorderRadius.circular(360)),
                        child: Center(
                            child: Text(
                          chatList[index].noOfUnreadMsg,
                          style: style.whiteMedium13,
                        )),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          25.kH,
          Text(
            "Tap and hold on chat for more option",
            style: style.blackMedium14,
          ),
          5.kH,
          const Divider(
            thickness: .5,
          ),
          5.kH,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock_outline,
                size: 12,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "  Your personal messages are ",
                    style: style.blackRegular12),
                TextSpan(
                    text: "end-to-end-encrypted", style: style.primRegular14)
              ])),
            ],
          ),
          100.kH
        ],
      );
    });
  }
}
