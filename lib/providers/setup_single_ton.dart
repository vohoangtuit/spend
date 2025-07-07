import 'package:expenditure/database/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../database/sharedPre/shared_pre.dart';
import '../main.dart' show showLog;

class SetupSingleton{
  final SharedPre? sharedPre;
  final AppDatabase? appDatabase;
// todo: thêm các service cần khởi tạo ở đây
  SetupSingleton({ this.sharedPre,this.appDatabase});
  // ✅ Giá trị mặc định để tránh lỗi `null`
  factory SetupSingleton.instance() {
    return SetupSingleton();
  }
}
// 🔥 StateNotifier quản lý AppProvider
class SetupNotifier extends StateNotifier<SetupSingleton>{
  static bool _isInitialized = false; // ✅ Chỉ khởi tạo 1 lần
  SetupNotifier() : super(SetupSingleton.instance()) {
    if (!_isInitialized) {
      showLog('SetupNotifier $_isInitialized');

      _initServices();
      _isInitialized = true;
    }else{
      showLog('SetupNotifier $_isInitialized');
    }

  }

  Future<void> _initServices() async {
    final sharedPre = await SharedPre.getInstance();
    final appDatabase = AppDatabase();
    state = SetupSingleton(
      sharedPre: sharedPre,
      appDatabase: appDatabase,
    );
    showLog("_initServices");
  }
}
// ✅ Provider dùng chung cho toàn bộ dữ liệu
final setupProvider = StateNotifierProvider<SetupNotifier, SetupSingleton>((ref) {
  return SetupNotifier();
});


