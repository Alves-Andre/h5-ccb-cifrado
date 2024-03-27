import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'hinos_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS hinos (
        id INTEGER PRIMARY KEY,
        titulo TEXT,
        favorito INTEGER
      )
    ''');
  }

  Future<void> insertHino(Map<String, dynamic> hino) async {
    Database db = await instance.database;
    await db.insert('hinos', hino);
  }

  Future<List<Map<String, dynamic>>> getAllHinos() async {
    Database db = await instance.database;
    return await db.query('hinos');
  }
}
