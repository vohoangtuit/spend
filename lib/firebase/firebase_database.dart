import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseDB {
  static String expenditure = 'Spends';
  static String income = 'Revenues';

  late BuildContext? context;

  late DatabaseReference expenditureData;
  late DatabaseReference incomeData;

  late FirebaseApp app;

  late FirebaseDatabase database;

  static final FirebaseDB _instance = FirebaseDB._internal();
  static FirebaseDB get instance => _instance;
  FirebaseDB._internal(){
    initDB();
  }


  void initDB() async {
    app = await Firebase.initializeApp();
    database = FirebaseDatabase.instance;
    //database.ref().child('$TAG_TRACKING/');
    expenditureData = database.ref(expenditure);// todo root
    incomeData = database.ref(income);// todo root
  }

}