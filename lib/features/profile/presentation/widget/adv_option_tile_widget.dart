import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';

class AdvOptionTileWidget extends StatelessWidget {
  const AdvOptionTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    AppStyle style = AppStyle();
    return Container(
      decoration: const BoxDecoration(color: kWhite, boxShadow: [
        BoxShadow(
            color: kGrey5, blurRadius: 2, spreadRadius: 1, offset: Offset(0, 3))
      ]),
      width: AppSize.screenWidth,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, top: 15, bottom: 15, right: 15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.lock_outline,
                  size: 32,
                ),
                25.kW,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Encryption",
                      style: style.blackBold20,
                    ),
                    Text(
                      "Messages and calls are end-to-end\n encrypted."
                      "Tap to verify.",
                      style: style.blackMedium16,
                    )
                  ],
                )
              ],
            ),
            19.kH,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.timer_outlined,
                  size: 32,
                ),
                25.kW,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Disappearing messages",
                      style: style.blackBold20,
                    ),
                    Text(
                      "7 days",
                      style: style.blackMedium16,
                    )
                  ],
                )
              ],
            ),
            19.kH,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.sync_lock,
                  size: 32,
                ),
                25.kW,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chat lock",
                      style: style.blackBold20,
                    ),
                    Text(
                      "Lock and hide this chat on\n"
                      "this device.",
                      style: style.blackMedium16,
                    )
                  ],
                ),
                const Spacer(),
                Switch(
                  value: true,
                  onChanged: (value) {},
                  activeTrackColor: kPrimary,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
