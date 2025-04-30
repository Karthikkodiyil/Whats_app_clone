import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';

class FloatButtonWidget extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;
  const FloatButtonWidget({
    super.key,
    required this.icon,required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimary,
      onPressed:onPressed,
      child: icon
    );
  }
}


