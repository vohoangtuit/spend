import 'dart:ui';

import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/model/data_model.dart';
import 'package:expenditure/model/group_data_model.dart';
import 'package:expenditure/screens/dialog/dialog_controller.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/screens/items/item_income.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class IncomeScreen extends ConsumerStatefulWidget {
  const IncomeScreen({super.key});

  @override
  ConsumerState<IncomeScreen> createState() => _IncomeScreenState();
}

class _IncomeScreenState extends BaseScreen<IncomeScreen> with AutomaticKeepAliveClientMixin<IncomeScreen> {
  List<GroupDataIncome> _group =[];
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
      margin: EdgeInsets.only(left:20,right:20,bottom: 70),
      child: Column(
        children: [
          _viewList(),
        ],
      ),
    );
  }
  Widget _viewList() {
    return _group.isNotEmpty?Expanded(
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: _group.length,
          padding: EdgeInsets.only(top: 10),
          itemBuilder: (_,index)=>ItemIncome(item: _group[index],)
      ),
    ):Container();
  }
  void _provider() {
    var event  =getEventProvider();
    //log(event.toString());
    if(event.income!=null){
      if(event.income!){
        WidgetsBinding.instance.addPostFrameCallback((_) {
          //ref.watch(createProvider.notifier).reset();
          _showCreate();
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
      _groupData();
    });
  }
  void _groupData()async{
   await GroupDataIncome.groupByDate(_data).then((list){
      setState(() {
        _group =list;
      });
    });

  }
  void _showCreate(){
    DialogController(context).createData(title: '${AppLocalizations.of(context)!.add} ${AppLocalizations.of(context)!.income}', data: (data){
      resetEvent();
      Future.delayed(Duration(seconds: 1),(){
        _handelAdd(data);
      });
    });
  }

  void _handelAdd(DataModel data)async{
    await appDatabase.income.saveData(data).then((item){
      if(item!=null){
        if(mounted){
          setState(() {
            _data.add(item);
          });
        }
        _groupData();
      }
    });

  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
