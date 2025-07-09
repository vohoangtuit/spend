import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/localization/l10n/app_localizations.dart';
import 'package:expenditure/model/data_model.dart';
import 'package:expenditure/model/group_data_model.dart';
import 'package:expenditure/screens/dialog/dialog_controller.dart';
import 'package:expenditure/screens/general/view_add_data.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/screens/items/item_expenditure.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/create_provider.dart';

class ExpenditureScreen extends ConsumerStatefulWidget {

  const ExpenditureScreen({super.key});

  @override
  ConsumerState<ExpenditureScreen> createState() => _ExpenditureScreenState();
}

class _ExpenditureScreenState extends BaseScreen<ExpenditureScreen> with AutomaticKeepAliveClientMixin<ExpenditureScreen>{
   List<GroupDataExpenditure> _group =[];
   List<ExpenditureInfoData> _data = [];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    _provider();
    return Scaffold(
      appBar: baseAppBar(context, AppLocalizations.of(context)!.expenditure),
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
       padding: EdgeInsets.only(top: 10),
       itemCount: _group.length,
       itemBuilder: (_,index)=>ItemExpenditure(item: _group[index],)
   ),
    ):Container();
  }
  void _provider() {
    var event  =getEventProvider();
    //log(event.toString());
    if(event.expenditure!=null){
      if(event.expenditure!) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // ref.watch(createProvider.notifier).reset();
          //_showAdd();
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
   await appDatabase.expenditure.getAll(account!=null?account!.uuid:'').then((data){
     if(mounted){
       _data = data;
     }
     _groupData();
   });
  }
   void _groupData()async{
     await GroupDataExpenditure.groupByDate(_data).then((list){
       setState(() {
         _group =list;
       });
     });
     log('_groupData ${_group.length}');
   }
   void _showCreate(){
    DialogController(context).createData(title: '${AppLocalizations.of(context)!.add} ${AppLocalizations.of(context)!.expenditure}', data: (data){

    });
   }
  void _showAdd(){
    buildCreateData(
        context: context,
        title: '${AppLocalizations.of(context)!.add} ${AppLocalizations.of(context)!.expenditure}',
        data: (DataModel data) {
          Future.delayed(Duration(seconds: 1),(){
            _handelAdd(data);
          });

        }
    );
  }
  void _handelAdd(DataModel data)async{
    await appDatabase.expenditure.saveData(data).then((item){
      if(item!=null){
        if(mounted){
          setState(() {
            _data.add(item);
          });
        }
        log('_data ${_data.length}');
        _groupData();
      }
    });

  }


  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
