import 'package:chetan_koli/Assigment6/SqlLiteDB/formodel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbProvider {

  Future<Database> initDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, "Form.db"),
      onCreate: (database, version) async {
        await database.execute("""
        CREATE TABLE FormTable(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        email TEXT NOT NULL,
        phone TEXT NOT NULL,
        address TEXT NOT NULL
        )  
          """);
      },
      version: 1,
    );
  }

  Future<bool> insertData(FormModel model) async {
    final Database db = await initDB();
    db.insert("FormTable", model.toMap());
    return true;
  }

   Future<void> updateData(FormModel model,int id) async {
    final Database db = await initDB();
    await db.update("FormTable", model.toMap(), where: "id=?",whereArgs: [id]);
  }

   Future<void> deletData(int id) async {
    final Database db = await initDB();
    await db.delete("FormTable", where: "id=?",whereArgs: [id]);

  }

  Future<List<FormModel>> getData() async {
    final Database db = await initDB();
    final List<Map<String, Object?>> datas = await db.query("FormTable");
    return datas.map((e) => FormModel.fromMap(e)).toList();
  }
}
