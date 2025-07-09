import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/model/group_data_model.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/widgets/app_color.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemIncome extends ConsumerStatefulWidget {
  final GroupDataIncome item;
  const ItemIncome({super.key, required this.item});

  @override
  ConsumerState<ItemIncome> createState() => _ItemIncomeState();
}

class _ItemIncomeState extends BaseScreen<ItemIncome> {
  List<IncomeInfoData> _data =[];
  @override
  Widget build(BuildContext context) {
    _data =widget.item.listData!;
    return _data.isNotEmpty?Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          textBlueSmall(widget.item.date!),
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
  Widget _item(IncomeInfoData item){
    return Card(
      color: Colors.blue.shade50,
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
                    appDatabase.income.deleteById(item.id);
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
