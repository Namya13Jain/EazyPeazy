//initialize db
import 'package:eazy_peazy/models/reminders_model.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _db;
  static final int _version = 1;
  static final String _tableName = "reminders";

  static Future<void> initDB() async {
    if (_db != null) {
      return;
    }
    try {
      String _path = await getDatabasesPath() + 'reminders.db';
      _db = await openDatabase(
        _path,
        version: _version,
        onCreate: (db, version) {
          print("creating a new one");
          return db.execute(
            "CREATE TABLE $_tableName("
            "id INTEF=GER PRIMARY KEY AUTOINCREMENT,"
            "title STRING, note TEXT,date STRING, "
            "startTime STRING, endTime STRING, "
            "remind INTEGER, repeat STRING,"
            "color INTEGER,"
            "isCompleted INTEGER)",
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  static Future<int> insert(Reminder? reminder) async {
    print("insert function called");
    return await _db?.insert(_tableName, reminder!.toJson()) ?? 1;
  }

  static Future<List<Map<String, dynamic>>> query() async {
    print("query function called");
    return await _db!.query(_tableName);
  }
}
