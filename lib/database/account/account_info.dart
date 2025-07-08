// Định nghĩa bảng Users
import 'package:drift/drift.dart';


class AccountInfo extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get socialId => text().nullable()();
  TextColumn get uuid => text().nullable()();
  TextColumn get userId => text().nullable()();
  TextColumn get fullName => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get phoneNumber => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get avatar => text().nullable()();
  TextColumn get clastLogin => text().nullable()();
  BoolColumn get isActive => boolean().nullable()();
  IntColumn get typeUser => integer().nullable()();
  TextColumn get deviceToken => text().nullable()();
  TextColumn get deviceName => text().nullable()();
  IntColumn get deviceType => integer().nullable()();
  TextColumn get deviceId => text().nullable()();

}