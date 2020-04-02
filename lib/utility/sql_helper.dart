import 'package:projectflutterapp/models/Category.dart';
import 'package:projectflutterapp/models/Task.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class SQL_Helper{

  static SQL_Helper sql_helper;
  static Database _database;

  SQL_Helper._createInstant();

  factory SQL_Helper(){ /////////to allow constructor return value write "factory
    if (sql_helper == null)
      sql_helper = SQL_Helper._createInstant();

    return sql_helper;
  }

  final String categoriestableName = "categories";
  final String _catId = "_id";
  final String _catTitle = "_title";
  final String _catDescription = "_description";



  final String taskstableName = "tasks";
  final String _taskId = "_id";
  final String _taskTitle = "_title";
  final String _taskTime = "_time";
  final String _taskDays ="_days";
  final String _taskNotes = "_notes";
  final String _taskComplete ="_taskComplete";
  final String _taskAddAlert = "_addAlert";
  final String _taskHardness ="_hardness";
  final String _taskCategory ="_category";


  Future<Database> get database async {
    if (_database == null)
      _database = await initializedDatabase();
    return _database ;

  }

  Future<Database> initializedDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "project.db";
    var studentDB= await openDatabase(path , version: 1 , onCreate: createDatabase);

    return studentDB;
  }

  void createDatabase (Database db , int version) async{

    String sql = "CREATE TABLE $categoriestableName($_catId INTEGER PRIMARY KEY AUTOINCREMENT,$_catTitle TEXT,$_catDescription TEXT)";
    await  db.execute(sql);

    String sqll = "CREATE TABLE $taskstableName($_taskId INTEGER PRIMARY KEY AUTOINCREMENT,$_taskTitle TEXT,$_taskTime DATE,$_taskDays TEXT,$_taskNotes TEXT ,$_taskComplete INTEGER ,$_taskAddAlert TEXT, $_taskHardness INTEGER,$_catId INTEGER)";
    await  db.execute(sqll);
  }

  Future<int> insert(Category row) async {


    Database db = await this.database;
    var result= await db.insert(categoriestableName, row.toMap());
    return  result;


  }
  Future<int> update(Category row) async {
    Database db = await sql_helper.database;
    int id = row.toMap()[_catId];
    return await db.update(categoriestableName, row.toMap(), where: '$_catId = ?', whereArgs: [id]);
  }


  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await this.database;
    String sql = "SELECT * FROM $categoriestableName";
    return await db.rawQuery(sql);
  }


  Future<List<Category>> showStudents() async {

    final Database db = await this.database;
    final List<Map<String, dynamic>> maps = await db.query('students');
    return maps.map((c)=>  Category.fromMap(c)).toList();

  }



  Future<int> queryRowCount() async {
    Database db = await this.database;
    return Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM $categoriestableName'));
  }



  Future<int> delete(int id) async {
    Database db = await sql_helper.database;
    return await db.delete(categoriestableName, where: '$_catId = ?', whereArgs: [id]);
  }



}

