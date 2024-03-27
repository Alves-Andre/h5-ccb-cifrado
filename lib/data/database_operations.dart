import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final _databaseName = "hinos_database.db";
  static final _databaseVersion = 1;

  static final table = 'hinos';
  static final columnId = '_id';
  static final columnNumber = 'numero';
  static final columnTitle = 'titulo';
  static final columnFavorite = 'favorito';
  

  // Call initializeX() before using x
  DatabaseHelper.initializeDatabase();

  // torna esta classe singleton
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // tem apenas uma referência ao banco de dados
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;
    // instantâneo não nulo, inicialize o banco de dados
    _database = await _initDatabase();
    return _database;
  }

  // inicializar o banco de dados
  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // método onCreate, que é chamado apenas da primeira vez que o banco de dados é criado
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnNumber INTEGER NOT NULL,
            $columnTitle TEXT NOT NULL,
            $columnFavorite BOOLEAN NOT NULL
          )
          ''');

    // Insira os hinos padrão
    await _insertDefaultHinos(db);
  }

  Future _insertDefaultHinos(Database db) async {
    // Insira suas inserções padrão aqui
    await db.insert(table, {columnNumber: 1, columnTitle: '1 - Cristo, meu Mestre...', columnFavorite: true});
    await db.insert(table, {columnNumber: 2, columnTitle: '2 - De Deus tu és eleita', columnFavorite: false});
    await db.insert(table, {columnNumber: 3, columnTitle: '3 - Faz-nos ouvir Tua voz', columnFavorite: true});
    await db.insert(table, {columnNumber: 4, columnTitle: '4 - Ouve a nossa oração', columnFavorite: false});
    await db.insert(table, {columnNumber: 5, columnTitle: '5 - A Rocha celestial', columnFavorite: false});
  }

  // Método de consulta para buscar todos os hinos
  Future<List<Map<String, dynamic>>> queryAllHinos() async {
    Database? db = await instance.database;
    return await db!.query(table);
  }

  Future<void> toggleFavorite(int numero, bool favorito) async {
    Database? db = await instance.database;
    await db!.rawUpdate(
      'UPDATE $table SET $columnFavorite = ? WHERE $columnId = ?',
      [favorito ? 1 : 0, numero],
    );
  }

  // Método de consulta para buscar um hino específico pelo ID
  Future<Map<String, dynamic>> queryHino(int id) async {
    Database? db = await instance.database;
    List<Map<String, dynamic>> results = await db!.query(table,
        where: '$columnId = ?',
        whereArgs: [id],
        limit: 1); // Limitar a consulta a um resultado
    if (results.isNotEmpty) {
      return results.first;
    } else {
      throw Exception('Hino não encontrado');
    }
  }
}