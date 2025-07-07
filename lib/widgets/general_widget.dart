import 'package:expenditure/widgets/app_color.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar baseAppBar(BuildContext context, String title) {
  return AppBar(
    title: textTitle(title),
    centerTitle: true,
    iconTheme: IconThemeData(
      color: AppColor.textColor, //change your color here
    ),
    backgroundColor: AppColor.white,
    bottomOpacity: 0.5,
    elevation: 2.0,
    systemOverlayStyle: systemUiOverlayStyle(),
  );
}
SystemUiOverlayStyle systemUiOverlayStyle() {
  return SystemUiOverlayStyle(
    statusBarColor: AppColor.white,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
  );
}
SafeArea deviceScreen({required Widget child}) {
  return SafeArea(
    top: false,
    // bottom: Device.get().isIphoneX ? true : false,
    child: child,
  );
}
SizedBox spaceHeight(double space) {
  return SizedBox(
    height: space,
  );
}
SizedBox spaceWidth(double space) {
  return SizedBox(
    width: space,
  );
}
Widget screenWithKeyboard(BuildContext context, Widget widget) {
  return GestureDetector(
    onTap: () {
      final currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    },
    child: widget,
  );
}

Widget loadingCenter() {
  return Container(
    color: Colors.white.withOpacity(0.5),
    child: const Center(
      child: CircularProgressIndicator(
          strokeWidth: 2
        // valueColor: AlwaysStoppedAnimation<Color>(AppColor.red),
      ),
    ),
  );
}

Widget loadingCenterSmall() {
  return Center(
    // heightFactor: 1,
    // widthFactor: 1,
    child: SizedBox(
      height: 16,
      width: 16,
      child: CircularProgressIndicator(
        strokeWidth: 1.5,
      ),
    ),
  );
}
BoxDecoration bgRadius(Color color, double radius) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
  );
}
BoxDecoration bgBorder(Color color, Color border, double radius) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color,
      border: Border.all(color: border));
}
BoxDecoration bgNotBorder(Color color, double radius) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
  );
}
BoxDecoration bgCircle(Color color) {
  return BoxDecoration(color: color, shape: BoxShape.circle);
}

RoundedRectangleBorder radiusTop() {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
  );
}