
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPre {
  static SharedPre? _instance;
  static SharedPreferences? _preferences;
  static String locationDevice ='locationDevice';
  static String keyDeviceToken ='deviceToken';
  static String languages ='language';
  static String keyAvatar ='avatar';
  static String keyUserName ='fullName';
  static String deviceId ='deviceId';
  static String accountData ='accountData';

  static Future<SharedPre> getInstance() async {
    _instance ??= SharedPre();
    _preferences ??= await SharedPreferences.getInstance();
    return _instance!;
  }
   void setString(String key,String value)async{
    _preferences!.setString(key, value);
  }
   Future<String> getString(String key) async {
    return _preferences!.getString(key)??'';
  }

   void setInt(String key,int value){
    _preferences!.setInt(key, value);
  }
   Future<int?> getInt(String key) async {
    return _preferences!.getInt(key);
  }

  void setBool(String key,bool value){
    _preferences!.setBool(key, value);
  }
  Future<bool?> getBool(String key) async {
    return _preferences!.getBool(key);
  }


   Future<bool> clearData()async{
   return await _preferences!.clear();
  }
  Future<bool> removeKey(String key)async{
    return await _preferences!.remove(key);
  }
}

final sharedPreProvider = FutureProvider<SharedPre>((ref) async {
  return  await SharedPre.getInstance();
});