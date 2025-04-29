import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_event.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/bottom_nav_bar_widget.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/chat_tile_widget.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/float_button_widget.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/row_list_widget.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/text_field_widget.dart';

class HomeChatPage extends StatelessWidget {
  const HomeChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      floatingActionButton: const FloatButtonWidget(),
      backgroundColor: kWhite,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: AppSize.screenHeight,
              width: AppSize.screenWidth,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, right: 15, left: 15),
                    child: AppBarWidget(),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 5.0, right: 15, left: 15, bottom: 15),
                            child: TextFieldWidget(),
                          ),
                          RowListWidget(),
                          ChatTileWidget()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 95,
              right: 22,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: kGrey5, borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    metaAiLogo,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
   //   bottomNavigationBar:const BottomNavBarWidget(),
    );
  }
}


