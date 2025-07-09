import 'package:expenditure/model/group_data_model.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/widgets/app_color.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../database/app_database.dart';

class ItemExpenditure extends ConsumerStatefulWidget {
  final GroupDataExpenditure item;
  const ItemExpenditure({super.key, required this.item});

  @override
  ConsumerState<ItemExpenditure> createState() => _ItemExpenditureState();
}

class _ItemExpenditureState extends BaseScreen<ItemExpenditure> {
  List<ExpenditureInfoData> _data =[];
  @override
  Widget build(BuildContext context) {
    _data =widget.item.listData!;
    return _data.isNotEmpty?Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          textPrimarySmall(widget.item.date!),
          spaceHeight(5),
          _listData(),

        ],
      ),
    ):Container();
  }
  Widget _listData(){
    return ListView.builder(
       itemCount: _data.length,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_,index)=>_item(_data[index])
    );
  }
  Widget _item(ExpenditureInfoData item){
    return Card(
      color: Colors.green.shade50,
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                     Expanded(child: textLarge(item.name!)),
                    ],
                  ),
                  spaceHeight(8),
                  textMoney(item.money!)
                ],
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  appDatabase.expenditure.deleteById(item.id);
                  _data.remove(item);
                });

              },
                child: Icon(Icons.edit_note,color: AppColor.gray,size: 30,))
          ],

        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
