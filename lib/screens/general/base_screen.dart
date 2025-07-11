import 'dart:convert';

import 'package:expenditure/core/core_functions.dart';
import 'package:expenditure/core/core_screen.dart';
import 'package:expenditure/database/app_database.dart';
import 'package:expenditure/database/sharedPre/shared_pre.dart';
import 'package:expenditure/model/user_model.dart';
import 'package:expenditure/providers/create_provider.dart';
import 'package:expenditure/providers/setup_single_ton.dart';
import 'package:expenditure/screens/dialog/dialog_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/connect_internet.dart';

abstract class BaseScreen<T extends ConsumerStatefulWidget> extends CoreScreen<T>
    with AppFunctions {
  final connection = ConnectInternet();
  bool isTokenValid = false;
  bool? isLoading = false;
  bool firstLoad = true;
  bool endData = false;
  bool isOnline = true;
  bool isLogin = false;
  SharedPre sharedPre =SharedPre() ;
  late final AppDatabase appDatabase;
  late final SetupSingleton setup; //✅ Chỉ khởi tạo 1 lần cho cả app vơí khai báo late final
  AccountInfoData? account;

  @override
  void initAll() async {
    _configApp();
    super.initAll();
    // log("base: initAll");
  }

  @override
  void initState() {
    super.initState();
    //  _checkInternetAndInit();
  }
  void _configApp() async {
    setup = ref.read(setupProvider);// ✅ lấy ra setup từ main đã khởi tạo
    if(setup.sharedPre!=null&&setup.appDatabase!=null){
      sharedPre =setup.sharedPre!;
      appDatabase =setup.appDatabase!;
      getAccountDatabase();
    }
  }
  CreateProvider getEventProvider() {
    CreateProvider event =CreateProvider.setNotCreate();
    final get = ref.watch(createProvider);
    if(get.expenditure!=null){
      event.expenditure = get.expenditure;
    }
    if(get.income!=null){
      event.income = get.income;
    }
    return ref.read(createProvider);
  }
  void resetEvent(){
    ref.watch(createProvider.notifier).reset();
  }
  Future<void> getAccountDatabase() async {
    await appDatabase.accountDao.getFirstAccount().then((data) {
      if (data != null) {
        if(mounted){
          setState(() {
            account =data;
          });
        }
      //  log("Account ${account!.fullName}");
      } else {
       // log("Account null");
      }
    });
  }
  void handleLoginSuccess(UserModel data)async{
    updateAccountDB(data, true);

  }
  Future<void> updateAccountDB(UserModel account,bool isLogin) async {
    await saveSharePre(account);
    await appDatabase.accountDao.saveAccountFromSystem(account,isLogin);
    getAccountDatabase();
    if(isLogin){
      if(mounted){
       backToScreen();
      }
    }
  }
  Future<void> saveSharePre(UserModel account)async{

    sharedPre.setString(SharedPre.accountData, jsonEncode(account.saveJson()));
  }

  ///----

  void showMessage(String title, String message) {
    DialogController(context).showBaseNotification(title, message);
  }
}
