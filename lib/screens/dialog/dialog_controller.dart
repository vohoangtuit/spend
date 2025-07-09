import 'package:expenditure/model/data_model.dart';
import 'package:expenditure/screens/dialog/dialog_create.dart';
import 'package:expenditure/screens/dialog/dialog_widget.dart';
import 'package:flutter/material.dart';

class DialogController {
  BuildContext context;
  Dialog? dialog;

  DialogController(this.context);

  Function? _showDialog() {
    showDialog(
      // barrierDismissible: false,// touch outside dismiss
      context: context,
      builder: (BuildContext context) => dialog!,
    );
    return null;
  }

  Future dismissDialog() async {
    if (dialog != null) {
      Navigator.of(context).pop();
      dialog = null;
    }
  }

  Future showBaseNotification(
    String title,
    String description, {
    bool? notCenter,
  }) async {
    await dismissDialog();
    dialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // 👈 Bo góc ở đây
      ),
      child: generalMessage(
        context,
        title,
        description,
        dismissDialog,
        true,
        notCenter: notCenter,
      ),
    );
    _showDialog();
  }

  Future createData({required String title, required ValueChanged<DataModel> data})async{
    await dismissDialog();
    dialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // 👈 Bo góc ở đây
      ),
      child: DialogCreate(title: title,),
    );
    _showDialog();
  }
}
