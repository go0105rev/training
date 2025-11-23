import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MentalScaleDatabase {
  static final MentalScaleDatabase instance = MentalScaleDatabase._init();
  static Database? _database;

  MentalScaleDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('mental_scale.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE b_mental_scale_detail (
        mscale_num TEXT PRIMARY KEY,
        s_date TEXT NOT NULL,
        m001 INTEGER,
        m002 INTEGER,
        m003 INTEGER,
        m004 INTEGER,
        m005 INTEGER
      )
    ''');
  }

  Future<void> insertAnswer(Map<String, dynamic> answer) async {
    final db = await instance.database;
    await db.insert('b_mental_scale_detail', answer,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Map<String, dynamic>>> getAllAnswers() async {
    final db = await instance.database;
    return await db.query('b_mental_scale_detail');
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }

  Future<int> getNextSequence() async {
    final db = await instance.database;

    // 既存データの最大 mscale_num を取得
    final result = await db.rawQuery(
        "SELECT MAX(mscale_num) as max_id FROM b_mental_scale_detail");

    if (result.isNotEmpty && result.first['max_id'] != null) {
      String maxIdStr = result.first['max_id'] as String;
      // "MS25" を取り除き数字部分だけ取得
      String numericPart = maxIdStr.substring(4); 
      int numeric = int.tryParse(numericPart) ?? 0;
      return numeric + 1;
    } else {
      return 1; // データがない場合は 1 からスタート
    }
  }

}
