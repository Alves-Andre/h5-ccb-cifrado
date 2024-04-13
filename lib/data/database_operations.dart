import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:h5_ccb_cifra/data/datahinos.dart';

class DatabaseHelper {
  static final _databaseName = "hinos_database.db";
  static final _databaseVersion = 1;

  static final table = 'hinos';
  static final columnId = '_id';
  static final columnNumber = 'numero';
  static final columnTitle = 'titulo';
  static final columnFavorite = 'favorito';

  static final cifraTable = 'cifra';
  static final cifraColumnId = '_id';
  static final cifraColumnNumber = 'numero';
  static final cifraColumnCifra = 'cifra';
   

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

  //excluir banco de dados
  Future<void> deletarBanco() async {
    // Obtenha o caminho do banco de dados
    String path = join(await getDatabasesPath(), _databaseName);
    // Exclua o banco de dados
    await deleteDatabase(path);
    // Defina o banco de dados como nulo
    _database = null;
  }

  // método onCreate, que é chamado apenas da primeira vez que o banco de dados é criado
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnNumber INTEGER NOT NULL,
            $columnTitle TEXT NOT NULL,
            $columnFavorite INTEGER NOT NULL
          )
        ''');

        await db.execute('''
          CREATE TABLE $cifraTable (
            $cifraColumnId INTEGER PRIMARY KEY,
            $cifraColumnNumber INTEGER NOT NULL,
            $cifraColumnCifra TEXT
          )
        ''');

    // Insira os hinos padrão
    await _insertDefaultHinos(db);
  }

  Future _insertDefaultHinos(Database db) async {
    for (var hino in listaHinos) {
      await db.insert(table, {columnNumber: hino['number'], columnTitle: hino['title'], columnFavorite: 0});
    }
  }

  // Método de consulta para buscar todos os hinos em ordem crescente de número
  Future<List<Map<String, dynamic>>> queryAllHinos() async {
    Database? db = await instance.database;
    return await db!.query(table, orderBy: '$columnNumber ASC');
  }

  Future<void> toggleFavorite(int numero, bool favorito) async {
    Database? db = await instance.database;
    await db!.rawUpdate(
      'UPDATE $table SET $columnFavorite = ? WHERE $columnNumber = ?',
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

  // Método para favoritar ou desfavoritar um hino
  Future<void> toggleFavoriteHino(int id) async {
    Database? db = await instance.database;
    Map<String, dynamic> hino = await queryHino(id);
    bool favorito = hino[columnFavorite] == 1;
    await db!.update(table, {columnFavorite: favorito ? 0 : 1},
        where: '$columnId = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> queryFavoriteHinos() async { //Retornar os hinos com o columncFavorite igual a 1 ou igual a 1 
    Database? db = await instance.database;
    return await db!.query(table, where: '$columnFavorite = 1');
  }
}