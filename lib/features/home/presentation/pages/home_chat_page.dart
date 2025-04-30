import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/chat/chat_tile_widget.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/chat/row_list_widget.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/chat/text_field_widget.dart';

class HomeChatPage extends StatelessWidget {
  const HomeChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: AppSize.screenHeight,
              width: AppSize.screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    10.kH,
                    const Padding(
                      padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
                      child: TextFieldWidget(),
                    ),
                    const RowListWidget(),
                    const ChatTileWidget()
                  ],
                ),
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
