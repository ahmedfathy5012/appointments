import 'package:mobile/src/Features/reminder/data/models%20/data_base_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'app_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE tasks (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            task_type INTEGER NULL,
            time TEXT NULL,
            task_type_name TEXT NULL,
            task_type_icon TEXT NULL,
            task_type_code INTEGER NULL
          )
        ''');
      },
    );
  }

  Future<int> insert<D extends DataBaseModel>({required String table ,required D data}) async {
    final db = await database;
    int id = await db.insert(table, data.toMap());
    return id;
  }

  Future<List<Map<String, dynamic>>> getData({required String table}) async {
    final db = await database;
    return await db.query(table);
  }

  Future<Map<String, dynamic>?> getDataById({required String table,required int id}) async {
    final db = await database;
    List<Map<String, dynamic>> response =  await db.query(table, where: 'id = ?', whereArgs: [id]);
    if(!response.isEmpty){
      return response.first;
    }else{
      return null;
    }
  }

  Future<int> update<D extends DataBaseModel>({required String table ,required D data}) async {
    final db = await database;
    return await db.update(table, data.toMap(), where: 'id = ?', whereArgs: [data.id]);
  }


  Future<int> delete({required String table , required int id}) async {
    final db = await database;
    return await db.delete(table, where: 'id = ?', whereArgs: [id]);
  }
}