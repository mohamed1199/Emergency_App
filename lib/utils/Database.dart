import 'dart:io';
import 'package:flutkart/utils/Medical.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider{
  DBProvider._();
  static final DBProvider db = DBProvider._();
  static Database _database;

  Future<Database> get database async{
    if(_database != null){
      return _database;
    }
    _database = await initDB();
    return _database;
  }

  initDB() async{
    Directory doument = await getApplicationDocumentsDirectory();
    String path = join(doument.path, "Medical.db");
    return await openDatabase(path, version: 1, onOpen: (db) {
    }, onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Medical ("
          "id INTEGER PRIMARY KEY AUTOINCREMENT,"
          "full_name TEXT,"
          "id_number TEXT,"
          "phone_number TEXT,"
          "dateofbirth TEXT,"
          "chronic TEXT,"
          "address TEXT,"
          "social TEXT,"
          "gender TEXT,"
          "job_location TEXT"
          ")");
    });
  }

  insertt(Medical medical) async{
    final db = await database;
    var res = await db.insert("Medical", medical.toMap());
    return res;
  }

  getClient(int id) async {
    final db = await database;
    var res =await  db.query("Medical", where: "id = ?", whereArgs: [id]);

    print(res);
    return res.isNotEmpty ? Medical.fromMap(res.first) : Null ;
  }

}

