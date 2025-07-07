import 'package:expenditure/screens/general/dialog_widget.dart';
import 'package:flutter/material.dart';

class DialogController{
  BuildContext context;
  Dialog? dialog;
DialogController(this.context);
Function? _showDialog() {
  showDialog(
    // barrierDismissible: false,// touch outside dismiss
      context: context,
      builder: (BuildContext context) => dialog!);
  return null;
}
Future dismissDialog() async{
  if(dialog!=null){
    Navigator.of(context).pop();
    dialog = null;
  }
}
Future  showBaseNotification(String title, String description,{bool ? notCenter}) async {
    await dismissDialog();
    dialog = Dialog(
      child: generalMessage(context, title, description, dismissDialog,true,notCenter: notCenter),
    );
    _showDialog();
  }
}