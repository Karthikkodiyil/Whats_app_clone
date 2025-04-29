import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_event.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_state.dart';
import 'package:whatsapp_clone/features/home/presentation/pages/home_calls_page.dart';
import 'package:whatsapp_clone/features/home/presentation/pages/home_chat_page.dart';
import 'package:whatsapp_clone/features/home/presentation/pages/home_community_page.dart';
import 'package:whatsapp_clone/features/home/presentation/pages/home_updates_page.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/bottom_nav_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
      return Scaffold(
        body: NotificationListener(
            onNotification: (notification) {
              if (notification is ScrollUpdateNotification) {
                if (state.pageController.page?.round() != state.index) {
                  bloc.add(EventTabScroll(state.pageController.page!.round()));
                }
              }
              return false;
            },
            child: PageView(
              controller: state.pageController,
              onPageChanged: (index) {
                bloc.add(EventTabChange(index, animate: false));
              },
              children: const [
                HomeChatPage(),
                HomeUpdatesPage(),
                HomeCommunityPage(),
                HomeCallsPage()
              ],
            )),
        bottomNavigationBar: BottomNavBarWidget(),
      );
    });
  }
}
