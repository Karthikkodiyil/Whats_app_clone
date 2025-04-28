
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            whatsAppText,
            height: 50,
            width: 130,
          ),
          SizedBox(
            child: Row(
              children: [
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
