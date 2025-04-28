import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        40.kH,
        Image.asset(
          whatsAppLogo,
          height: 90,
          width: 90,
        ),
        const Spacer(),
        Text(
          "from",
          style: style.blackRegular14,
        ),
        Image.asset(metaText),
        40.kH,
      ],
    );
  }
}