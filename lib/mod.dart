import 'package:flutter/material.dart';

class ModFont{
  static const poppins = "Poppins";
}

class ModColor{
  static Color primaryColor = const Color(0xFF1F41BB);
  static Color bgTEC = const Color(0xFFF1F4FF);
}
///semiBold:500, Bold: 700, Regular: 300, Medium: 400
class ModFontWeight{
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const regular = FontWeight.w300;
  static const medium = FontWeight.w400;
}

class ModTextStyle{
  static const TextStyle title = TextStyle(fontFamily: ModFont.poppins,fontWeight: ModFontWeight.semiBold,fontSize: 35,height: 0);
  static const TextStyle regular = TextStyle(fontFamily: ModFont.poppins,fontWeight: ModFontWeight.regular,fontSize: 14,height: 0);
  static const TextStyle header1 = TextStyle(fontFamily: ModFont.poppins,fontWeight: ModFontWeight.bold,fontSize: 30,height: 0);
  static const TextStyle header2 = TextStyle(fontFamily: ModFont.poppins,fontWeight: ModFontWeight.semiBold,fontSize: 20,height: 0);
  static const TextStyle header3 = TextStyle(fontFamily: ModFont.poppins,fontWeight: ModFontWeight.medium,fontSize: 14,height: 0);
  static const TextStyle tec = TextStyle(fontFamily: ModFont.poppins,fontWeight: ModFontWeight.medium,fontSize: 16,height: 0);
  static const TextStyle button1 = TextStyle(fontFamily: ModFont.poppins,fontWeight: ModFontWeight.semiBold,fontSize: 20,height: 0);
  static const TextStyle button2 = TextStyle(fontFamily: ModFont.poppins,fontWeight: ModFontWeight.semiBold,fontSize: 14,height: 0);
}