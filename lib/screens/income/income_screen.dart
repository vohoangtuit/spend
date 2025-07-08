import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/model/data_model.dart';
import 'package:expenditure/providers/create_provider.dart';
import 'package:expenditure/screens/bottomsheet/view_add_data.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IncomeScreen extends ConsumerStatefulWidget {
  const IncomeScreen({super.key});

  @override
  ConsumerState<IncomeScreen> createState() => _IncomeScreenState();
}

class _IncomeScreenState extends BaseScreen<IncomeScreen> with AutomaticKeepAliveClientMixin<IncomeScreen> {
  List<IncomeInfoData> _data = [];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    _provider();
    return Scaffold(
      appBar: baseAppBar(context, AppLocalizations.of(context)!.income),
      body: _viewContent(),
    );
  }
  Widget _viewContent() {
    return Container(
      margin: EdgeInsets.only(left:10,right:10,bottom: 70),
      child: Expanded(child: _viewList()),
    );
  }
  Widget _viewList() {
    return ListView.builder(
      itemCount: _data.length,
      itemBuilder: (context, index) {
        IncomeInfoData item = _data[index];
        return ListTile(
          title: Text(item.name ?? ''),
          subtitle: Text(item.money.toString() ?? ''),
          trailing: Text('${item.yearMonthDay}'),
          onTap: () {
            // Handle item tap
          },
        );
      },
    );
  }
  void _provider() {
    var event  =getEventProvider();
    //log(event.toString());
    if(event.income!=null){
      if(event.income!){
        WidgetsBinding.instance.addPostFrameCallback((_) {
          //ref.watch(createProvider.notifier).reset();
          _showAdd();
        });
      }
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getAllData();
    });

  }

  void _getAllData()async{
    await appDatabase.income.getAll(account!=null?account!.uuid:'').then((data){
      if(mounted){
        _data = data;
      }
    });
  }


  void _showAdd(){
    buildCreateData(
        context: context,
        title: '${AppLocalizations.of(context)!.add} ${AppLocalizations.of(context)!.income}',
        data: (DataModel data) {
          _handelAdd(data);

        }
    );
  }
  void _handelAdd(DataModel data)async{
    await appDatabase.income.saveData(data).then((item){
      if(item!=null){
        if(mounted){
          setState(() {
            _data.add(item);
          });
        }
      }
    });

  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
