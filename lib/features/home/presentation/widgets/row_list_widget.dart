import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_event.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_state.dart';

class RowListWidget extends StatelessWidget {
  const RowListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
          BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
        return Row(
          children: [
            15.kW,
          const  _ListBoxWidget(
              title: 'All',
              index: 0,
            ),
            12.kW,
          const  _ListBoxWidget(
              title: 'Unread',
              index: 1,
            ),
            12.kW,
          const  _ListBoxWidget(
              title: 'Favorites',
              index: 2,
            ),
            12.kW,
          const  _ListBoxWidget(
              title: 'Groups',
              index: 3,
            ),
            12.kW,
         const   _ListBoxWidget(
              title: 'Demo',
              index: 4,
            ),
            12.kW,
          const  _ListBoxWidget(
              title: 'Work',
              index: 5,
            ),
            12.kW,
          ],
        );
      }),
    );
  }
}

class _ListBoxWidget extends StatelessWidget {
  final String title;
  final int index;
  const _ListBoxWidget({
    required this.title,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return InkWell(
        onTap: () {
          context.read<ChatBloc>().add(EventGetChat(index));
        },
        child: Container(
          height: 35,
          decoration: BoxDecoration(
            color: state.index == index ? kGreen5 : kGrey5,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 13.0, right: 13),
            child: Center(
                child: Text(
              title,
              style: state.index == index
                  ? style.greenRegular14
                  : style.blackRegular14,
            )),
          ),
        ),
      );
    });
  }
}
