import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/utils/format_datetime.dart';

class GroupDataExpenditure{
  String? date;
  List<ExpenditureInfoData>? listData;

  GroupDataExpenditure({this.date, this.listData});

  static Future<List<GroupDataExpenditure>> groupByDate(List<ExpenditureInfoData> listData) async {
    List<GroupDataExpenditure> group = [];

    final grouped = groupBy(listData, (ExpenditureInfoData e) {
      //return e.yearMonthDay!;
      final parsedDate = DateTime.parse(e.yearMonthDay!);
      return DateFormat('dd/MM/yyyy').format(parsedDate);
    });

    grouped.forEach((date, items) {
      group.add(GroupDataExpenditure(date: date, listData: items));
    });

    // Sắp xếp theo ngày giảm dần
    group.sort((a, b) {
      final dateA = DateFormat('dd/MM/yyyy').parse(a.date!);
      final dateB = DateFormat('dd/MM/yyyy').parse(b.date!);
      return dateB.compareTo(dateA);
    });

    return group;
  }
}

class GroupDataIncome{
  String? date;
  List<IncomeInfoData>? listData;

  GroupDataIncome({this.date, this.listData});
  static Future<List<GroupDataIncome>> groupByDate(List<IncomeInfoData> listData) async {
    List<GroupDataIncome> group = [];

    final grouped = groupBy(listData, (IncomeInfoData e) {
      //return e.yearMonthDay!;
      final parsedDate = DateTime.parse(e.yearMonthDay!);
      return DateFormat('dd/MM/yyyy').format(parsedDate);
    });

    grouped.forEach((date, items) {
      group.add(GroupDataIncome(date: date, listData: items));
    });

    // Sắp xếp theo ngày giảm dần
    group.sort((a, b) {
      final dateA = DateFormat('dd/MM/yyyy').parse(a.date!);
      final dateB = DateFormat('dd/MM/yyyy').parse(b.date!);
      return dateB.compareTo(dateA);
    });

    return group;
  }
}