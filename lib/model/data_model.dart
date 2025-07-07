class DataModel{
  String? id;
  String? name;
  double? money;
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
    money = json['money']?.toDouble();
    day = json['day'].toInt();
    month = json['month'].toInt();
    year = json['year'].toInt();
    yearMonth = json['yearMonth']??'';
    yearMonthDay = json['yearMonthDay']??'';
    sync = json['sync']??true;
    keyFirebase = json['keyFirebase']??'';
    uuid = json['uuid']??'';
    timestamp = json['timestamp']??'';
  }
}