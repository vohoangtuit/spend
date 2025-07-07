
import 'package:expenditure/model/data_model.dart';
import 'package:expenditure/screens/general/base_screen.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewAddData extends ConsumerStatefulWidget {
  final ValueChanged<DataModel> data;
  const ViewAddData({super.key, required this.data});

  @override
  ConsumerState<ViewAddData> createState() => _ViewAddDataState();
}

class _ViewAddDataState extends BaseScreen<ViewAddData> {
  @override
  Widget build(BuildContext context) {
    return deviceScreen(
        child: FractionallySizedBox(
            heightFactor: 0.5,
            child: _viewContent()
        ));

  }
  Widget _viewContent(){
    return Container();
  }
}


Future addData({
  required BuildContext context,
  required ValueChanged<DataModel> data,
}) {
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: radiusTop(),
    context: context,
    builder: (context) {
      return ViewAddData(data: (DataModel value) {
        data(value);
      },);

    },
  );
}