
import 'package:drift/drift.dart';
import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/model/user_model.dart';

import 'account_info.dart';

part 'account_dao.g.dart';

@DriftAccessor(tables: [AccountInfo])
class AccountDao extends DatabaseAccessor<AppDatabase> with _$AccountDaoMixin {
  AccountDao(super.db);
  //todo muốn viết function trong Dao thì phải run: dart run build_runner build
  /// Drift ràng buộc truy vấn phải thêm Data phí sau, UserInfo => UserInfoData
  /// và AccountInfo => accountInfo khi  gọi into,select,update,delete

  // Thêm account
  Future<int> insertAccount(AccountInfoCompanion account) => into(accountInfo).insert(account);

  // 🔹 getSingleOrNull(): Nếu bảng có dữ liệu, trả về bản ghi đầu tiên. Nếu không có dữ liệu, trả về null.
  Future<AccountInfoData?> getFirstAccount() => select(accountInfo).getSingleOrNull();

  //🔹 Ưu điểm: Linh hoạt hơn nếu  muốn áp dụng thêm điều kiện.
  Future<AccountInfoData?> getFirstAccountOtherWay() async {
    final query = select(accountInfo)..limit(1);
    final result = await query.get();
    return result.isNotEmpty ? result.first : null;
  }

  // Lấy tất cả account
  Future<List<AccountInfoData>> getAll() => select(accountInfo).get();

  // Cập nhật account
  Future<bool> updateAccount(AccountInfoCompanion account) => update(accountInfo).replace(account);

  Future<int> updateAccountById(String userId, {required AccountInfoCompanion account}) {
    return (update(accountInfo)..where((u) => u.userId.equals(userId))).write(account);
  }

  // Xóa account theo ID
  Future<int> deleteAccount(int id) =>
      (delete(accountInfo)..where((t) => t.id.equals(id))).go();

  // Xóa toàn bộ dữ liệu trong bảng userData
  Future<int> deleteAllAccount() => delete(accountInfo).go();

  // Chuyển đổi từ AccountModel sang AccountInfoCompanion để lưu vào Database
  Future<void> saveAccountFromSystem(UserModel user, bool isLogin) async {
    AccountInfoCompanion data = AccountInfoCompanion(
      socialId: Value(user.socialId ?? ""),
      userId: Value(user.userId ?? ""),
      uuid: Value(user.uuid ?? ""),
      fullName: Value(user.fullName ?? ""),
      email: Value(user.email ?? ""),
      phoneNumber: Value(user.phoneNumber ?? ""),
      address: Value(user.address ?? ""),
      avatar: Value(user.avatar ?? ""),
      clastLogin: Value(user.clastLogin ?? ""),
      isActive: Value(user.isActive??false),
      typeUser: Value(user.typeUser??1),
      deviceToken: Value(user.deviceToken ?? ""),
      deviceName: Value(user.deviceName ?? ""),
      deviceType: Value(user.deviceType ??1),
      deviceId: Value(user.deviceId ??''),
    );

    if(isLogin){
      await deleteAllAccount();
      await insertAccount(data);
    }else{
      if(user.userId!=null){
        await updateAccountById(user.userId!, account: data);
      }

    }

  }

}