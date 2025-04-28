import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';

class FloatButtonWidget extends StatelessWidget {
  const FloatButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimary,
      onPressed: () {},
      child: const Stack(
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
    );
  }
}
