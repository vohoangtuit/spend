import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/model/data_model.dart';
import 'package:expenditure/screens/dialog/dialog_add_data.dart';
import 'package:expenditure/screens/dialog/dialog_edit.dart';
import 'package:expenditure/screens/dialog/general_message.dart';
import 'package:expenditure/widgets/app_color.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/general_widget.dart' show spaceHeight;
import 'dialog_calendar.dart' show DialogCalendar;

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

  Future showBaseNotification(String title, String description) async {
    await dismissDialog();
    dialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // 👈 Bo góc ở đây
      ),
      child: GeneralMessage(
        title: title,
        description: description,
        callback: () {
          dismissDialog();
        },
      ),
    );
    _showDialog();
  }

  Future createData({
    required String title,
    required ValueChanged<DataModel> data,
  }) async {
    await dismissDialog();
    dialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // 👈 Bo góc ở đây
      ),
      child: DialogAddData(
        title: title,
        data: (DataModel value) {
          data(value);
        },
      ),
    );
    _showDialog();
  }

  Future showCalendar(DateTime date, ValueChanged<DateTime> newDate) async {
    dismissDialog();
    dialog = Dialog(
      child: DialogCalendar(
        date: date,
        newDate: (DateTime value) {
          newDate(value);
        },
      ),
    );
    _showDialog();
  }

  Future editData({
    required DataModel item,
    required ValueChanged<DataModel> update,
    required VoidCallback delete,
  }) async {
    await dismissDialog();
    dialog = Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: DialogEdit(
        item: item,
        update: (value) {
          update(value);
        },
        delete: () {
          delete();
          dismissDialog();
        },
      ),
    );
    _showDialog();
  }
}

Widget viewTitle(BuildContext context, String title) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: textBlueBold(
          title.isEmpty
              ? AppLocalizations.of(context)!.notification.toUpperCase()
              : title.toUpperCase(),
        ),
      ),
      Divider(height: 1, color: AppColor.primary),
      spaceHeight(20),
    ],
  );
}

Widget contentDialog(Widget content) {
  return Container(
    padding: EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 8),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: AppColor.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.zero,
        topRight: Radius.zero,
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
    ),
    child: content,
  );
}

Widget headerPrimaryBlue(String title) {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.blue,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.zero,
        bottomRight: Radius.zero,
      ),
    ),
    child: Center(child: textBold(title)),
  );
}

Widget headerNoBackground(String title) {
  return Container(
    height: 45,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.zero,
        bottomRight: Radius.zero,
      ),
    ),
    child: Column(
      children: [
        Expanded(child: Center(child: textBold(title.toUpperCase()))),
        Container(height: 1, color: Colors.blue),
      ],
    ),
  );
}
