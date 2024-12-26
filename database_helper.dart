import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DatabaseHelper {
  static Database? _database;
  static const String tableName = 'history';
  static const String columnId = 'id';
  static const String columnEntry = 'entry';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'history.db');
    print('Database path: $path');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableName (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnEntry TEXT NOT NULL
      )
    ''');
  }

  Future<int> insertEntry(String entry) async {
    Database db = await instance.database;
    int id = await db.insert(tableName, {columnEntry: entry});
    print('Inserted entry into DB with ID: $id');
    return id;
  }

  Future<List<Map<String, dynamic>>> getEntries() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> entries =  await db.query(tableName, orderBy: '$columnId DESC');
    print('Retrieved ${entries.length} entries from DB');
    return entries;
  }
}








