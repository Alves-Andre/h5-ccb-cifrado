import 'package:flutter/services.dart';
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

  Future<void> resetDatabase() async {
    Database? db = await instance.database;
    await db!.close();
    String path = join(await getDatabasesPath(), _databaseName);
    await deleteDatabase(path);
    _database = null;
  }


  Future _insertDefaultHinos(Database db) async {
    // Insira suas inserções padrão aqui
    await db.insert(table, {columnNumber: 1, columnTitle: '1 - Cristo, meu Mestre...', columnFavorite: 1});
    await db.insert(table, {columnNumber: 2, columnTitle: '2 - De Deus tu és eleita', columnFavorite: 0});
    await db.insert(table, {columnNumber: 3, columnTitle: '3 - Faz-nos ouvir Tua voz', columnFavorite: 1});
    await db.insert(table, {columnNumber: 4, columnTitle: '4 - Ouve a nossa oração', columnFavorite: 0});
    await db.insert(table, {columnNumber: 5, columnTitle: '5 - A Rocha celestial', columnFavorite: 0});
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

  //Criar a tabela chamada cifra que terá as colunas, id, numero, titulo e cifra
  //Criar metodo de adicionar cifra, o metodo deve receber um nome de um arquivo txt e o id do hino, a cifra deve ser adicionada no formato lista de string, onde cada string é uma linha do arquivo
  //Criar metodo de buscar cifra, o metodo deve receber o id do hino e retornar a cifra do hino

  //Método para adicionar cifra
  Future<void> addCifra(int numero, String fileName) async {
    Database? db = await instance.database;
    String cifra = await _readCifra(fileName);
    await db!.insert(cifraTable, {cifraColumnNumber: numero, cifraColumnCifra: cifra});
  }

  //Método para buscar cifra
  Future<String> queryCifra(int id) async {
    Database? db = await instance.database;
    List<Map<String, dynamic>> results = await db!.query('cifra',
        where: '$columnId = ?',
        whereArgs: [id],
        limit: 1); // Limitar a consulta a um resultado
    if (results.isNotEmpty) {
      return results.first['cifra'];
    } else {
      throw Exception('Cifra não encontrada');
    }
  }

  //Método para ler a cifra de um arquivo
  Future<String> _readCifra(String fileName) async {
    try {
      // Lê o conteúdo do arquivo
      String conteudo = await rootBundle.loadString('assets/data/$fileName');
      return conteudo;
    } catch (e) {
      // Trate possíveis erros ao ler o arquivo
      print('assets/data/$fileName Erro ao ler o arquivo:  $e');
      return '';
    }
  }
  
}