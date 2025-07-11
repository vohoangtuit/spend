import 'package:expenditure/utils/format_datetime.dart';
import 'package:expenditure/widgets/app_color.dart';
import 'package:expenditure/widgets/custom_text.dart';
import 'package:expenditure/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DialogCalendar extends StatefulWidget {
  final DateTime date;
  final ValueChanged<DateTime> newDate;
  const DialogCalendar({super.key, required this.date, required this.newDate});

  @override
  State<DialogCalendar> createState() => _DialogCalendarState();
}

class _DialogCalendarState extends State<DialogCalendar> {
  final controller = DateRangePickerController();
  DateTime dateTime =DateTime.now();
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SfDateRangePicker(
            controller: controller,
            startRangeSelectionColor: AppColor.blue,
            endRangeSelectionColor: AppColor.blue,
            showNavigationArrow: true,
            onSelectionChanged: (change) {
              dateTime = change.value;
            },
            selectionMode: DateRangePickerSelectionMode.single,
           // minDate: DateTime.now(),
            minDate: FormatDateTime.nextMonth(-1),
            maxDate: FormatDateTime.nextMonth(12),
            initialSelectedDate: widget.date ),
        GestureDetector(
          onTap: (){
            widget.newDate(dateTime);
            Navigator.of(context).pop();
          },
          child: Container(
            decoration: bgNotBorder(Colors.blue, 10),
            width: 80,
            height: 35,
            child: textWhiteButton("OK"),
          ),
        ),

        spaceHeight(20),
      ],
    );
  }
  @override
  void initState() {

    super.initState();
    if(mounted){
      setState(() {
        dateTime =widget.date;
      });
    }
  }

}
