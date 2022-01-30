import 'dart:io';
import 'package:cook/models/food.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._();
  static DatabaseHelper databaseHelper = DatabaseHelper._();
  Database database;
  initDatabase() {
    print("nasma1");
    connectToDatabase();
  }

  connectToDatabase() async {
    print("nasma");
   // Directory directory = await getApplicationDocumentsDirectory();
    String databasePath =await getDatabasesPath() + '/foods.db';
    database = await openDatabase(databasePath, version: 1, onCreate: (db, v) {
      db.execute('''
      CREATE TABLE foods_cate 
      (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, isFavorites INTEGER ,way Text , component Text , component Text ,image Text )
      ''');
    });
  }

  Future<List<Food>> getAllFoods() async {
    List<Map<String, Object>> data = await database.query('foods_cate');
    List<Food> foodsList = [];
    for (int x = 0; x < data.length; x++) {
      Map map = data[x];
      Food foodObj = Food(
          id: map['id'],
          name: map['name'],
          isFavorites: map['isFavorites'] == 1 ? true : false,

      way:
      map['way'],
      component:
      map['component'],
      image:
      map['image']);
      foodsList.add(foodObj);
    }

    List<Food> foodsPnjects = data.map((Map map) {
      return Food.fromMap(map);
    }).toList();
    return foodsPnjects;
  }

  Future<Food> getOneFood(int id) async {
    List<Map<String, Object>> data =
        await database.query('foods_cate', where: 'id=?', whereArgs: [id]);
    Map<String, Object> food = data.first;

    return Food.fromMap(food);
  }

  Future<int> insertNewFood(Food food) async {
    int rowCount = await database.insert('foods_cate', food.toMap());
    return rowCount;
  }

  updateOneFood(Food food) async {
    database.update('foods_cate', food.toMap(), where: 'id=?', whereArgs: [food.id]);
  }

  deleteOneFood(Food food) async {
    database.delete('foods_cate', where: 'id=?', whereArgs: [food.id]);
  }
}
