
import 'dart:ui';

import 'package:drift/drift.dart';
import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/database/income/income_info.dart';
import 'package:expenditure/main.dart';
import 'package:expenditure/model/data_model.dart';

part 'income_dao.g.dart';
@DriftAccessor(tables: [IncomeInfo])
class IncomeDao extends DatabaseAccessor<AppDatabase> with _$IncomeDaoMixin{
  IncomeDao(super.db);

  Future<int> insertData(IncomeInfoCompanion expenditure) => into(incomeInfo).insert(expenditure);
  Future<IncomeInfoData?> getNewItem(int id) {
    return (select(incomeInfo)..where((e) => e.id.equals(id))).getSingleOrNull();
  }
  // Lấy tất cả account
  Future<List<IncomeInfoData>> getAll(String? uuid) {
    return (select(incomeInfo)
      ..where((e) => e.uuid.equals(uuid!))
      ..orderBy([
            (t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc)
      ]))
        .get();
  }
  Future<int> deleteById(int id) => (delete(incomeInfo)..where((t) => t.id.equals(id))).go();

  Future<int> deleteAllByAccount(String? uuid) {
    return (delete(incomeInfo)..where((tbl) => tbl.uuid.equals(uuid!))).go();
  }

  Future<bool> updateItem(IncomeInfoCompanion expenditure) => update(incomeInfo).replace(expenditure);


  Future<IncomeInfoData?> saveData(DataModel data)async {
    IncomeInfoCompanion info = IncomeInfoCompanion(
        name: Value(data.name),
        money: Value(data.money),
        day: Value(data.day),
        month: Value(data.month),
        year: Value(data.year),
        yearMonth: Value(data.yearMonth),
        yearMonthDay: Value(data.yearMonthDay),
        sync: Value(data.sync),
        keyFirebase: Value(data.keyFirebase),
        uuid: Value(data.uuid),
        timestamp: Value(data.timestamp)
    );
    IncomeInfoData? newItem;
    await insertData(info).then((id)async{/// lấy item vừa được insert
      newItem =await getNewItem(id);
    });
    return newItem;
  }
}
