
import 'package:drift/drift.dart';
import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/database/income/income_info.dart';

part 'income_dao.g.dart';
@DriftAccessor(tables: [IncomeInfo])
class IncomeDao extends DatabaseAccessor<AppDatabase> with _$IncomeDaoMixin{
  IncomeDao(super.db);

  Future<int> insertData(IncomeInfoCompanion expenditure) => into(incomeInfo).insert(expenditure);
  // Lấy tất cả account
  Future<List<IncomeInfoData>> getAll(String uuid){
    return (select(incomeInfo)..where((e) => e.uuid.equals(uuid))).get();
  }
  Future<int> deleteById(int id) => (delete(incomeInfo)..where((t) => t.id.equals(id))).go();

  Future<int> deleteAllByAccount(String uuid) {
    return (delete(incomeInfo)..where((tbl) => tbl.uuid.equals(uuid))).go();
  }

  Future<bool> updateItem(IncomeInfoCompanion expenditure) => update(incomeInfo).replace(expenditure);

}
