import 'dart:io';
import 'package:expenditure/database/account/account_info.dart';
import 'package:expenditure/database/expenditure/expenditure_dao.dart';
import 'package:expenditure/database/expenditure/expenditure_info.dart';
import 'package:expenditure/database/income/income_dao.dart';
import 'package:expenditure/database/income/income_info.dart';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';


import 'account/account_dao.dart';

part 'app_database.g.dart';
@DriftDatabase(tables: [AccountInfo,ExpenditureInfo,IncomeInfo], daos: [AccountDao,ExpenditureDao,IncomeDao])//todo add table và dao vào đây
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
// todo: dart run build_runner build
  @override
  int get schemaVersion => 1; //todo 2,3 Tăng version nếu thay đổi DB

  // Khai báo DAO
  late final AccountDao accountDao = AccountDao(this);
  late final ExpenditureDao expenditure = ExpenditureDao(this);
  late final IncomeDao income = IncomeDao(this);

  // Thêm các DAO khác nếu cần
}
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'vht_Expenditure.db'));
    ///print('Database file path: ${file.path}'); // Thêm dòng này
    //showLog('Database file path: ${file.path}'); // Thêm dòng này
    return NativeDatabase(file);
  });
}

final databaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase(); // Riverpod sẽ tự đảm bảo chỉ tạo một instance
});