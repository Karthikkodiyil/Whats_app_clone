import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_event.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_state.dart';
import 'package:whatsapp_clone/features/home/presentation/pages/home_calls_page.dart';
import 'package:whatsapp_clone/features/home/presentation/pages/home_chat_page.dart';
import 'package:whatsapp_clone/features/home/presentation/pages/home_community_page.dart';
import 'package:whatsapp_clone/features/home/presentation/pages/home_updates_page.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/bottom_nav_bar_widget.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/float_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    final bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
      return Scaffold(
          body: NotificationListener(
              onNotification: (notification) {
                if (notification is ScrollUpdateNotification) {
                  if (state.pageController.page?.round() != state.index) {
                    bloc.add(
                        EventTabScroll(state.pageController.page!.round()));
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
          bottomNavigationBar: const BottomNavBarWidget(),
          floatingActionButton: state.index == 0
              ? FloatButtonWidget(
                  icon: const Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.chat_bubble,
                        color: kWhite,
                      ),
                      Icon(
                        Icons.add,
                        size: 15,
                        color: kPrimary,
                      ),
                    ],
                  ),
                  onPressed: () {},
                )
              : state.index == 1
                  ? FloatButtonWidget(
                      icon: const Icon(
                        Icons.camera_alt,
                        color: kWhite,
                      ),
                      onPressed: () {},
                    )
                  : state.index == 3
                      ? FloatButtonWidget(
                          icon: const Icon(
                            Icons.add_call,
                            color: kWhite,
                          ),
                          onPressed: () {},
                        )
                      : const SizedBox(),
          appBar: state.index == 0
              ? AppBar(
                  backgroundColor: kWhite,
                  title: Image.asset(
                    whatsAppText,
                    height: 50,
                    width: 130,
                  ),
                  actions: [
                    const Icon(
                      Icons.qr_code_scanner,
                      size: 28,
                    ),
                    20.kW,
                    const Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                    ),
                    15.kW,
                    const Icon(
                      Icons.more_vert,
                      size: 28,
                    ),
                    10.kW,
                  ],
                )
              : state.index == 1
                  ? AppBar(
                      title: Text(
                        "Updates",
                        style: style.blacSemi27,
                      ),
                      actions: [
                        const Icon(
                          Icons.qr_code_scanner,
                          size: 28,
                        ),
                        20.kW,
                        const Icon(
                          Icons.search,
                          size: 30,
                        ),
                        15.kW,
                        const Icon(
                          Icons.more_vert,
                          size: 28,
                        ),
                        10.kW,
                      ],
                    )
                  : state.index == 2
                      ? AppBar(
                          title: Text(
                            "Communities",
                            style: style.blacSemi27,
                          ),
                          actions: [
                            const Icon(
                              Icons.qr_code_scanner,
                              size: 28,
                            ),
                            15.kW,
                            const Icon(
                              Icons.more_vert,
                              size: 28,
                            ),
                            10.kW,
                          ],
                        )
                      : AppBar(
                          title: Text(
                            "Calls",
                            style: style.blacSemi27,
                          ),
                          actions: [
                              const Icon(
                                Icons.qr_code_scanner,
                                size: 28,
                              ),
                              20.kW,
                              const Icon(
                                Icons.search,
                                size: 30,
                              ),
                              15.kW,
                              const Icon(
                                Icons.more_vert,
                                size: 28,
                              ),
                              10.kW,
                            ]));
    });
  }
}
