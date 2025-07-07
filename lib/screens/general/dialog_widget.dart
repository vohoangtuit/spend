import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/widgets/app_color.dart';
import 'package:expenditure/widgets/custom_button.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';

Widget generalMessage(BuildContext context, String title, String description,
    VoidCallback callback, bool willPop,
    {bool? notCenter}) {
  return PopScope(
    canPop:  willPop, // todo disable back
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        spaceHeight(15),
        textTitle(title.isEmpty ? AppLocalizations.of(context)!.notification : title),

        spaceHeight(15),
        const Divider(
          height: 1,
          color: AppColor.gray,
        ),
        spaceHeight(20),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            description,
            textAlign: notCenter != null ? TextAlign.start : TextAlign.center,
            style: textStyle(15, false, AppColor.black),
          ),
        ),
        spaceHeight(30),
        buttonBlue100(AppLocalizations.of(context)!.ok, () {
          callback();
        }),
        const SizedBox(
          height: 15,
        ),
      ],
    ),
  );
}