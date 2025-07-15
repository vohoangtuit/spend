import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/model/data_model.dart' show DataModel, TypeData;
import 'package:expenditure/screens/dialog/dialog_controller.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/utils/format_datetime.dart';
import 'package:expenditure/utils/validators.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/custom_textfiled.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DialogEdit extends ConsumerStatefulWidget {
   final DataModel item;
   final ValueChanged<DataModel> update;
   final VoidCallback delete;
   const DialogEdit({super.key, required this.item, required this.update, required this.delete});

  @override
  ConsumerState<DialogEdit> createState() => _DialogEditState();
}

class _DialogEditState extends BaseScreen<DialogEdit> {
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
          Center(child: textMedium(AppLocalizations.of(context)!.edit1)),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buttonFunction(AppLocalizations.of(context)!.delete,(){
                widget.delete();
              }),
              _buttonFunction(AppLocalizations.of(context)!.cancel,(){
                Navigator.of(context).pop();
              }),
              _buttonFunction(AppLocalizations.of(context)!.save,(){
                _onSave();
              }),
            ],
          ),
          spaceHeight(15)
        ],
      ),
    );
  }
  Widget _buttonFunction(String title, VoidCallback click){
    return Container(
      margin: EdgeInsets.only(left: 10,right: 8),
      child: GestureDetector(
        onTap: click,
        child: textPrimaryMediumBold(title),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
  }
  void _initData(){
    if(mounted){
      setState(() {
        _nameController.text =widget.item.name!;
        _amountController.text ='${widget.item.money!}';
        _dateTime =DateTime.parse(widget.item.yearMonthDay!);
      });
    }
  }
  void _onSave()async{
    if(_nameController.text.isEmpty||_amountController.text.isEmpty){
      return;
    }
    int value = int.tryParse(Utils.getIntNumer(_amountController.text)) ?? 0;
    DataModel dataModel =await DataModel().create(_nameController.text.trimLeft().trimRight(), value, _dateTime,account: account);
    widget.update(dataModel);
    if(mounted){
      Navigator.of(context).pop();
    }
  }


}
