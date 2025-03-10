import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseInstance {
  final String _databaseName = 'my_database.db';
  final int _databaseVersion = 1;

  final String id = 'id';
  final String name = 'name';
  final String age = 'age';
  final String address = 'address';
  final String createdAt = 'created_at';
  final String updatedAt = 'updated';

  Database? _database;
  Future<Database> database() async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future _initDatabase() async {
    Directory documentsDirection = await getApplicationCacheDirectory();
    String path = join(documentsDirection.path, _databaseName);

    return openDatabase(path);
  }
}
