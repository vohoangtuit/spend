
import 'package:expenditure/screens/dialog/dialog_controller.dart';
import 'package:expenditure/widgets/app_color.dart';
import 'package:expenditure/widgets/custom_button.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';

class GeneralMessage extends StatefulWidget {
  final String title;
  final String description;
  final VoidCallback callback;
  const GeneralMessage({super.key, required this.title, required this.description, required this.callback});

  @override
  State<GeneralMessage> createState() => _GeneralMessageState();
}

class _GeneralMessageState extends State<GeneralMessage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        viewTitle(context,widget.title),

        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Text(widget.description, textAlign: TextAlign.center, style: textStyle(16, false, AppColor.textColor),),
        ),
        spaceHeight(30),
        buttonSmallColorWidth125("OK", Colors.grey.shade300, AppColor.primaryDark, (){
          widget.callback();
        }),
        spaceHeight(15)

      ],
    );
  }

}
