import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/features/home/presentation/pages/home_page.dart';
import 'package:whatsapp_clone/features/splash_screen/presentation/widget/splash_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    Future.delayed(const Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => const HomePage()));
    });
    return Scaffold(
      backgroundColor: kWhite,
      body: SizedBox(
        height: AppSize.screenHeight,
        width: AppSize.screenWidth,
        child: const Center(
          child: SplashWidget(),
        ),
      ),
    );
  }
}
