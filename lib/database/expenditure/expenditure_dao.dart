import 'package:drift/drift.dart';
import 'package:expenditure/model/data_model.dart';

import '../app_database.dart';
import 'expenditure_info.dart';

part 'expenditure_dao.g.dart';

@DriftAccessor(tables: [ExpenditureInfo])
class ExpenditureDao extends DatabaseAccessor<AppDatabase>
    with _$ExpenditureDaoMixin {
  ExpenditureDao(super.attachedDatabase);

  // todo: insert data return id tự tăng của data, 3,4,5....
  Future<int> insertData(ExpenditureInfoCompanion expenditure) =>
      into(expenditureInfo).insert(expenditure);

  Future<ExpenditureInfoData?> getNewItem(int id) {
    return (select(
      expenditureInfo,
    )..where((e) => e.id.equals(id))).getSingleOrNull();
  }

  // Lấy tất cả account
  Future<List<ExpenditureInfoData>> getAll(String? uuid) {
    return (select(expenditureInfo)
          ..where((e) => e.uuid.equals(uuid!))
          ..orderBy([
            (t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc),
          ]))
        .get();
  }

  Future<int> deleteById(int id) =>
      (delete(expenditureInfo)..where((t) => t.id.equals(id))).go();

  Future<int> deleteAllByAccount(String uuid) {
    return (delete(
      expenditureInfo,
    )..where((tbl) => tbl.uuid.equals(uuid))).go();
  }

  Future<bool> updateItem(ExpenditureInfoCompanion expenditure) =>
      update(expenditureInfo).replace(expenditure);

  Future<ExpenditureInfoData> updateById(int id, DataModel data) async {
    await (db.update(expenditureInfo)..where((t) => t.id.equals(id))).write(
      ExpenditureInfoCompanion(
        name: Value(data.name),
        money: Value(data.money),
        day: Value(data.day),
        month: Value(data.month),
        year: Value(data.year),
        yearMonth: Value(data.yearMonth),
        yearMonthDay: Value(data.yearMonthDay),
        timestamp: Value(data.timestamp),
      ),
    );
    return await (db.select(expenditureInfo)..where((t) => t.id.equals(id))).getSingle();
  }

  Future<ExpenditureInfoData?> saveData(DataModel data) async {
    ExpenditureInfoCompanion info = ExpenditureInfoCompanion(
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
      timestamp: Value(data.timestamp),
    );
    ExpenditureInfoData? newItem;
    await insertData(info).then((id) async {
      /// lấy item vừa được insert
      newItem = await getNewItem(id);
    });
    return newItem;
  }
}

// This class will handle
