
import 'package:drift/drift.dart';

import '../app_database.dart';
import 'expenditure_info.dart';

part 'expenditure_dao.g.dart';
@DriftAccessor(tables: [ExpenditureInfo])
class ExpenditureDao extends DatabaseAccessor<AppDatabase> with _$ExpenditureDaoMixin{
  ExpenditureDao(super.attachedDatabase);

  Future<int> insertData(ExpenditureInfoCompanion expenditure) => into(expenditureInfo).insert(expenditure);
  // Lấy tất cả account
  Future<List<ExpenditureInfoData>> getAll(String uuid){
    return (select(expenditureInfo)..where((e) => e.uuid.equals(uuid))).get();
  }
  Future<int> deleteById(int id) => (delete(expenditureInfo)..where((t) => t.id.equals(id))).go();

  Future<int> deleteAllByAccount(String uuid) {
    return (delete(expenditureInfo)..where((tbl) => tbl.uuid.equals(uuid))).go();
  }

  Future<bool> updateItem(ExpenditureInfoCompanion expenditure) => update(expenditureInfo).replace(expenditure);
}
  // This class will handle