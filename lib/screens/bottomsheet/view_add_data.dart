
import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/model/data_model.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/widgets/custom_button.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/create_provider.dart';

class ViewCreateData extends ConsumerStatefulWidget {
  final  String title;
  final ValueChanged<DataModel> data;
  const ViewCreateData({super.key, required this.title,required this.data});

  @override
  ConsumerState<ViewCreateData> createState() => _ViewAddDataState();
}

class _ViewAddDataState extends BaseScreen<ViewCreateData> {
  @override
  Widget build(BuildContext context) {
    return deviceScreen(
        child: FractionallySizedBox(
            heightFactor: 0.5,
            child: _viewContent()
        ));

  }
  Widget _viewContent(){
    return Container(
      padding: EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blueGrey,
            height: 50,
              child: Stack(
                children: [
                  Center(child: textWhiteButton(widget.title)),
                  Positioned(
                    right: 10,

                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              )),
          buttonBlue100(AppLocalizations.of(context)!.save, onSubmit)

        ],
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
     if(account==null){
       getAccountDatabase();

     }
    });
  }
  void onSubmit() async{
    // Here you can handle the data submission logic
    DataModel data =await DataModel().create("Cafe", 12000, DateTime.now(), account: account);
    widget.data(data);
    ref.watch(createProvider.notifier).reset();
    if(mounted){
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
      return ViewCreateData(title: title,data: (DataModel value) {
        data(value);
      },);

    },
  );
}