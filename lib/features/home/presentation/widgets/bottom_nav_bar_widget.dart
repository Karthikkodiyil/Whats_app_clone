import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_event.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_state.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return BottomNavigationBar(
          currentIndex: state.index,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            context.read<HomeBloc>().add(EventTabChange(index, animate: false));
          },
          unselectedLabelStyle: style.blackMedium14,
          selectedLabelStyle: style.blackSemi14,
          // selectedItemColor: kPrimary,
          unselectedItemColor: kBlack,
          items: [
            BottomNavigationBarItem(
              icon: state.index == 0
                  ? Container(
                      height: 45,
                      width: 75,
                      decoration: BoxDecoration(
                          color: kChatBoxGreen,
                          borderRadius: BorderRadius.circular(35)),
                      child: const Icon(
                        Icons.chat,
                        color: kPrimary,
                      ),
                    )
                  : const SizedBox(
                      height: 45,
                      child: Icon(
                        Icons.chat_outlined,
                      ),
                    ),
              label: "Chats",
            ),
            BottomNavigationBarItem(
                icon: state.index == 1
                    ? Container(
                        height: 45,
                        width: 75,
                        decoration: BoxDecoration(
                            color: kChatBoxGreen,
                            borderRadius: BorderRadius.circular(35)),
                        child: const Icon(
                          Icons.update,
                          color: kPrimary,
                        ),
                      )
                    : const SizedBox(
                        height: 45,
                        child: Icon(
                          Icons.update,
                        ),
                      ),
                label: "Updates"),
            BottomNavigationBarItem(
                icon: state.index == 2
                    ? Container(
                        height: 45,
                        width: 75,
                        decoration: BoxDecoration(
                            color: kChatBoxGreen,
                            borderRadius: BorderRadius.circular(35)),
                        child: const Icon(
                          Icons.person_3,
                          color: kPrimary,
                        ),
                      )
                    : const SizedBox(
                        height: 45,
                        child: Icon(
                          Icons.person_3_outlined,
                        ),
                      ),
                label: "Community"),
            BottomNavigationBarItem(
                icon: state.index == 3
                    ? Container(
                        height: 45,
                        width: 75,
                        decoration: BoxDecoration(
                            color: kChatBoxGreen,
                            borderRadius: BorderRadius.circular(35)),
                        child: const Icon(
                          Icons.call,
                          color: kPrimary,
                        ),
                      )
                    : const SizedBox(
                        height: 45,
                        child: Icon(
                          Icons.call_outlined,
                        ),
                      ),
                label: "Calls"),
          ]);
    });
  }
}
