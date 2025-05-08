import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';

class SendMsgWidget extends StatelessWidget {
  const SendMsgWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, left: 8, right: 8, top: 12),
      child: SizedBox(
        height: 55,
        width: AppSize.screenWidth,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Message",
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.attach_file, color: kBlack, size: 25),
                        10.kW,
                        const Icon(Icons.currency_rupee_sharp,
                            color: kBlack, size: 25),
                        10.kW,
                        const Icon(Icons.camera_alt_outlined,
                            color: kBlack, size: 27),
                        15.kW
                      ],
                    ),
                    prefixIcon:
                        const Icon(Icons.sticky_note_2_outlined, size: 28),
                    filled: true,
                    fillColor: kWhite,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none)),
              ),
            ),
            10.kW,
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(360)),
              child: const Icon(Icons.mic, color: kWhite, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
