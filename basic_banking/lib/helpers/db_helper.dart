import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DBHelper {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'transactions.db'),
        onCreate: (db, version) async {
      db.execute(
          'CREATE TABLE IF NOT EXISTS transactionHistory(id INTEGER PRIMARY KEY AUTOINCREMENT, senderEmail TEXT, receiverEmail TEXT, amount REAL)');
      db.execute(
          "CREATE TABLE IF NOT EXISTS user_data(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, imageSrc TEXT, amount REAL)");

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'John Doe',
            'johndoe@service.com',
            'assets/images/customer_male.png',
            5000.0
          ]);

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'Jane Doe',
            'janedoe@service.com',
            'assets/images/customer_female.png',
            7000.0
          ]);

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'James Mary',
            'jamesmary@service.com',
            'assets/images/customer_male.png',
            8000.0
          ]);

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'Lisa Ann',
            'lisaann@service.com',
            'assets/images/customer_female.png',
            8000.0
          ]);

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'Andrew Jane',
            'andrewjane@service.com',
            'assets/images/customer_male.png',
            11000.0
          ]);

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'Sarah Thomas',
            'sarahthomas@service.com',
            'assets/images/customer_female.png',
            13000.0
          ]);

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'Mark Paul',
            'marlpaul@service.com',
            'assets/images/customer_male.png',
            12000.0
          ]);

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'Lisa Daniel',
            'lisadaniel@service.com',
            'assets/images/customer_female.png',
            14000.0
          ]);

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'Jason Ryan',
            'jasonryan@service.com',
            'assets/images/customer_male.png',
            11000.0
          ]);

      await db.execute(
          "INSERT INTO user_data('name', 'email', 'imageSrc', 'amount') values(?, ?, ?, ?)",
          [
            'Anna Helen',
            'annahelen@service.com',
            'assets/images/customer_female.png',
            13000.0
          ]);
    }, version: 1);
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await DBHelper.database();
    await db.insert(
      table,
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DBHelper.database();
    return db.query(table);
  }

  static Future<void> update(
      String table, String updateByEmail, double updatedAmount) async {
    final db = await DBHelper.database();
    await db.rawUpdate('UPDATE $table SET amount = ? WHERE email = ?',
        ['$updatedAmount', '$updateByEmail']);
  }
}
