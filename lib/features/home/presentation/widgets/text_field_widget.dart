
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon:const Icon(Icons.search),
          hintText: "Ask Meta AI or Search",
          filled: true,
          fillColor: kGrey5,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: BorderSide.none)),
    );
  }
}