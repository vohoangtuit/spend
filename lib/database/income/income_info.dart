import 'package:drift/drift.dart';

class IncomeInfo extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  IntColumn get money => integer().nullable()();
  IntColumn get day => integer().nullable()();
  IntColumn get month => integer().nullable()();
  IntColumn get year => integer().nullable()();
  TextColumn get yearMonth => text().nullable()();
  TextColumn get yearMonthDay => text().nullable()();
  BoolColumn get sync => boolean().nullable()();
  TextColumn get keyFirebase => text().nullable()();
  TextColumn get uuid => text().nullable()();
  TextColumn get timestamp => text().nullable()();
}