import 'dart:async';

import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/model/data_model.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/utils/format_datetime.dart';
import 'package:expenditure/widgets/app_color.dart';
import 'package:expenditure/widgets/custom_button.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/custom_textfiled.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/create_provider.dart';

class ViewCreateData extends ConsumerStatefulWidget {
  final String title;
  final ValueChanged<DataModel> data;

  const ViewCreateData({super.key, required this.title, required this.data});

  @override
  ConsumerState<ViewCreateData> createState() => _ViewAddDataState();
}

class _ViewAddDataState extends BaseScreen<ViewCreateData> {
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  final double itemHeight =50;

  DateTime _dateTime =DateTime.now();
  late StreamSubscription<bool> _keyboardSubscription;
  bool _keyboardShowing =false;
  @override
  Widget build(BuildContext context) {
    return deviceScreen(
      child: screenWithKeyboard(context, FractionallySizedBox(heightFactor: _keyboardShowing?0.8:0.5, child: _viewContent())),
    );
  }
  Widget _viewContent() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 15),
            child: Column(
              children: [
                Container(
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
                ),
                spaceHeight(10),
              Padding(
                  padding: const EdgeInsets.all(15),
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
                        height: itemHeight,
                        decoration: bgNotBorder(Colors.grey.shade100, 5),
                        child: InkWell(
                          onTap: (){
                
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
                      )
                    ],
                  ),
                ),
                
                
              ],
            ),
          ),
          buttonPrimary150(AppLocalizations.of(context)!.save, onSubmit),
          spaceHeight(15)
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
    _checkKeyboardShowing();
  }
  void _checkKeyboardShowing() {
    var keyboardVisibilityController = KeyboardVisibilityController();
    _keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
          if (mounted) {
            setState(() {
              _keyboardShowing = visible;
            });
          }
        });
  }

  void _initData() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (account == null) {
        getAccountDatabase();
      }
    });
  }

  void onSubmit() async {

    String name =_nameController.text.trimLeft().trimRight();
    String amount =_amountController.text.trimLeft().trimRight();
    if(name.isEmpty||amount.isEmpty){
      return;
    }
    String cleanText = amount.replaceAll(RegExp(r'[^\d]'), ''); // Xóa mọi ký tự không phải số
    DataModel data = await DataModel().create(
      name,
      int.parse(cleanText),
      DateTime.now(),
      account: account,
    );
    widget.data(data);
    ref.watch(createProvider.notifier).reset();
    if (mounted) {
      Navigator.pop(context);
    }
  }
}

Future buildCreateData({
  required BuildContext context,
  required String title,
  required ValueChanged<DataModel> data,
}) {
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: radiusTop(),
    context: context,
    builder: (context) {
      return ViewCreateData(
        title: title,
        data: (DataModel value) {
          data(value);
        },
      );
    },
  );
}
