import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/widget_size.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';
import 'general_widget.dart';

Widget buttonPrimary100(String title, VoidCallback onSubmit) {
  return Center(
    child: InkWell(
      onTap: onSubmit,
      child: Container(
        width: 100,
        decoration: bgNotBorder(AppColor.primary, SizeView.radiusButton),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: textWhiteButton(title),
      ),
    ),
  );
}
Widget buttonPrimary150(String title, VoidCallback onSubmit) {
  return Center(
    child: InkWell(
      onTap: onSubmit,
      child: Container(
        width: 100,
        decoration: bgNotBorder(AppColor.primary, SizeView.radiusButton),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: textWhiteButton(title),
      ),
    ),
  );
}