
import 'package:cloud_firestore/cloud_firestore.dart';

class FireBaseCloudStore{
  static const socialLogin ='social_login';
  static const deleteAccount ='deleteAccount';

  late  FirebaseFirestore firebaseStore;

  static final FireBaseCloudStore _instance = FireBaseCloudStore._internal();
  static FireBaseCloudStore get instance => _instance;
  FireBaseCloudStore._internal(){
    firebaseStore= FirebaseFirestore.instance;
  }
}
