import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_state.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return TextField(
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: state.index == 0
                ? "Ask Meta AI or Search"
                : state.index == 1
                    ? "Search unread chats"
                    : state.index == 2
                        ? "Search favorite chats"
                        : state.index == 3
                            ? "Search group chats"
                            : state.index == 4
                                ? "Search demo chats"
                                : state.index == 5
                                    ? "Search work chats"
                                    : "",
            filled: true,
            fillColor: kGrey5,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: BorderSide.none)),
      );
    });
  }
}
