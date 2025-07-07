import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

import 'app_color.dart';

TextStyle styleDefault(){
  return TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColor.textColor,
      fontSize: TextSize.text,
      height: TextSize.heightText
  );
}
TextStyle textStyle(double size, bool isBold, Color color) {
  return TextStyle(
    color: color,
    fontSize: size,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
  );
}
TextStyle textStyleMedium(double size, bool isBold, Color color) {
  return TextStyle(
    color: color,
    fontSize: size,
    height: TextSize.heightText,
    fontWeight: isBold ? FontWeight.w500 : FontWeight.w400,
  );
}
Text textTitle(String title) {
  return Text(
    title,
    style: TextStyle(
        fontStyle: FontStyle.normal,
        color: AppColor.textColor,
        fontSize: TextSize.textTitle,
        fontWeight: FontWeight.bold
    ),

  );
}
Text text(String text) {
  return Text(text,
    style: styleDefault(),
  );
}

Text textMedium(String text) {
  return Text(
    text,
    style: textStyleMedium(TextSize.textMedium, true, AppColor.textColor),
  );
}
Text textMediumBold(String text) {
  return Text(
    text,
    style: textStyle(TextSize.textMedium, true, AppColor.textColor),
  );
}
Text textBold(String text) {
  return Text(
    text,
    style: textStyle(TextSize.text, true, AppColor.textColor),
  );
}
Text textLarge(String text) {
  return Text(
    text,
    style: textStyle(TextSize.textLarge, false, AppColor.textColor),
  );
}
Widget textWhiteButton(String text) {
  return Center(
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: TextSize.textButton,
        fontWeight: FontWeight.w600,
        height: TextSize.heightText,
      ),
    ),
  );
}
class TextSize{

  static double heightText =1.3;
  static double textTitle =17;

  static double textXSmall =Device.get().isPhone?11:12;
  static double textSmall =Device.get().isPhone?12.8:13;
  static double text =Device.get().isPhone?13.8:15;
  static double textMedium =Device.get().isPhone?14.2:15.2;
  static double textLarge =Device.get().isPhone?15.5:17;
  static double textXLarge =Device.get().isPhone?17.5:19.5;

  static double textButton =Device.get().isPhone?14:15;


  static double textMoneySmall =Device.get().isPhone?16:17.8;
  static double textMoneySmaller =Device.get().isPhone?14:15.9;
  static double textMoneyXSmall =Device.get().isPhone?12:13.5;

  static double textMoney =18;

  static double textTitleHome =Device.get().isPhone?17:20;
}