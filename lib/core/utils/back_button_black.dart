import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';

class BackButtonBlack extends StatelessWidget {
  const BackButtonBlack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back,
          color: kBlack,
          size: 25,
        ));
  }
}