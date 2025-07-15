import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/utils/format_datetime.dart';
enum TypeData{
  expenditure,
  income
}
class DataModel{
  String? id;
  String? name;
  int? money;
  int? day;
  int? month;
  int? year;
  String? yearMonth;
  String? yearMonthDay;
  bool? sync;
  String? keyFirebase;
  String? uuid;
  String? timestamp;


  DataModel({this.id, this.name, this.money, this.day, this.month,
    this.year, this.yearMonth, this.yearMonthDay, this.sync, this.keyFirebase,
    this.uuid, this.timestamp});
  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?? '';
    name = json['name']??'';
    if(json['money']!=null){
      money =int.parse(json['money']);
    }else{
      money = 0;
    }
    if(json['day']!=null){
      day = int.parse(json['day']);
    }
    if(json['month']!=null){
      month = int.parse(json['month']);
    }
    if(json['year']!=null){
      year = int.parse(json['year']);
    }
    yearMonth = json['yearMonth']??'';
    yearMonthDay = json['yearMonthDay']??'';
    sync = json['sync']??true;
    keyFirebase = json['keyFirebase']??'';
    uuid = json['uuid']??'';
    timestamp = json['timestamp']??'';
  }
  Future<DataModel> create(String name, int money, DateTime date,{required AccountInfoData? account})async{
    DataModel data =DataModel(name: name,money: money);
    data.year = date.year;
    data.month = date.month;
    data.day = date.day;
    data.yearMonth = FormatDateTime.strFromDateTime(date, FormatType.YYYYMM_);
    data.yearMonthDay = FormatDateTime.strFromDateTime(date, FormatType.YYYYMMDD_);
    data.timestamp = date.toIso8601String();
    if(account!=null){
      data.uuid = account.uuid??'';
    }else{
      data.uuid = '';
    }

    return data;
  }


  @override
  String toString() {
    return '{id: $id, name: $name, money: $money, day: $day, month: $month, year: $year, yearMonth: $yearMonth, yearMonthDay: $yearMonthDay, sync: $sync, keyFirebase: $keyFirebase, uuid: $uuid, timestamp: $timestamp}';
  }

}