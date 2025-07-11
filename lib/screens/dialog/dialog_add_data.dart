import 'package:expenditure/model/data_model.dart';
import 'package:expenditure/screens/dialog/dialog_controller.dart';
import 'package:expenditure/utils/format_datetime.dart';
import 'package:expenditure/utils/validators.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../localization/l10n/app_localizations.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfiled.dart';
import '../../widgets/general_widget.dart';

class DialogAddData extends StatefulWidget {
  final String title;
  final ValueChanged<DataModel>data;
  const DialogAddData({super.key, required this.title, required this.data});

  @override
  State<DialogAddData> createState() => _DialogAddDataState();
}

class _DialogAddDataState extends State<DialogAddData> {
  final double itemHeight =50;
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _dateTime =DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _header(),
        _viewFrom()
      ],
    );
  }
  Widget _header(){
    return  Container(
      color: Colors.white10,
      height: 50,
      child: Stack(
        children: [
          Center(child: textMedium(widget.title.toUpperCase())),
          Positioned(
            right: 5,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.black54),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget _viewFrom(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: [
          SizedBox(
            height: itemHeight,
            child: TextFormField(
              controller: _nameController,
              decoration: inputDecoration(
                AppLocalizations.of(context)!.enter,
                AppLocalizations.of(context)!.name,
              ),
            ),
          ),
          spaceHeight(15),
          SizedBox(
            height: itemHeight,
            child: TextFormField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              inputFormatters: [CurrencyInputFormatter()],
              decoration: inputDecoration(
                AppLocalizations.of(context)!.enter,
                AppLocalizations.of(context)!.amount,
              ),
            ),
          ),
          spaceHeight(15),
          Container(
            height: itemHeight-10,
            decoration: bgNotBorder(Colors.grey.shade50, 5),
            child: InkWell(
              onTap: (){
                DialogController(context).showCalendar(_dateTime, (newDate){
                  setState(() {
                    _dateTime =newDate;
                  });
                });

              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    text(AppLocalizations.of(context)!.date),
                    Expanded(child: Center(child: textBold(FormatDateTime.strFromDateTime(_dateTime, FormatType.DDMMYYYY)))),
                    Icon(Icons.calendar_month,color: Colors.blue,)
                  ],
                ),
              ),
            ),
          ),
          spaceHeight(20),
          buttonPrimary150(AppLocalizations.of(context)!.save, _onSubmit),
          spaceHeight(15)
        ],
      ),
    );
  }
  void _onSubmit()async{
    if(_nameController.text.isEmpty||_amountController.text.isEmpty){
      return;
    }
    int value = int.tryParse(Utils.getIntNumer(_nameController.text)) ?? 0;
    DataModel dataModel =await DataModel().create(_nameController.text.trimLeft().trimRight(), value, _dateTime);
    widget.data(dataModel);
    if(mounted){
      Navigator.of(context).pop();
    }

  }
}
