import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';

class AppStyle {
  AppStyle._internal();

  static final AppStyle _instance = AppStyle._internal();

  factory AppStyle() {
    return _instance;
  }

  TextStyle _baseStyle(Color color, FontWeight fontWeight, double size) {
    return TextStyle(
        fontFamily: "poppins",
        color: color,
        fontWeight: fontWeight,
        fontSize: size);
  }

  TextStyle get blackRegular14 => _baseStyle(kBlack, FontWeight.w300, 14);

  TextStyle get blackMedium20 => _baseStyle(kBlack, FontWeight.w400, 20);
  TextStyle get redSemi20 => _baseStyle(kRed, FontWeight.w500, 20);
  TextStyle get blackMedium14 => _baseStyle(kBlack, FontWeight.w400, 14);
  TextStyle get blackSemi14 => _baseStyle(kBlack, FontWeight.w900, 14);
  TextStyle get blackSemi17 => _baseStyle(kBlack, FontWeight.w600, 17);
  TextStyle get blackBold20 => _baseStyle(kBlack, FontWeight.bold, 20);

  TextStyle get blackBold27 => _baseStyle(kBlack, FontWeight.bold, 27);
    TextStyle get blacSemi27 => _baseStyle(kBlack, FontWeight.w500, 27);

  TextStyle get blackMedium16 => _baseStyle(kBlack, FontWeight.w400, 16);

  TextStyle get greenRegular14 => _baseStyle(kGreen, FontWeight.w300, 14);
  TextStyle get primRegular14 => _baseStyle(kPrimary, FontWeight.w600, 14);

  TextStyle get blackRegular12 => _baseStyle(kBlack, FontWeight.w300, 12);
  TextStyle get blackMedium12 => _baseStyle(kBlack, FontWeight.w400, 12);

  TextStyle get whiteMedium13 => _baseStyle(kWhite, FontWeight.w400, 13);

    TextStyle get whiteMedium16 => _baseStyle(kWhite, FontWeight.w400, 16);

}
