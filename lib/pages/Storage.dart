import 'package:flutter/material.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Dog {
  final int id;
  final String name;
  final int age;

  Dog({this.id, this.name, this.age});
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }
}

class DatabaseHelper {
  static Database database;

  static Future<Database> getDBConnector() async {
    if (database != null) {
      return database;
    }
    return await initDatabase();
  }

  static Future<Database> initDatabase() async {
    database = await openDatabase(
      join(await getDatabasesPath(), 'doggie_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)",
        );
      },
      version: 1,
    );
    return database;
  }

  static Future<void> insertDog(Dog dog) async {
    final Database db = await getDBConnector();
    await db.insert(
      'dogs',
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Dog>> dogs() async {
    final Database db = await getDBConnector();

    final List<Map<String, dynamic>> maps = await db.query('dogs');

    return List.generate(maps.length, (i) {
      return Dog(
        id: maps[i]['id'],
        name: maps[i]['name'],
        age: maps[i]['age'],
      );
    });
  }
}

class StorageWidget extends StatefulWidget {
  @override
  StorageState createState() => StorageState();
}

class StorageState extends State<StorageWidget> {
  void addDog() async {
    final fido = Dog(
      id: 1,
      name: 'Jess',
      age: 5,
    );

    await DatabaseHelper.insertDog(fido);
  }

  void getDogs() async {
    final a = await DatabaseHelper.dogs();
    a.forEach((element) {
      print(element.name);
    });
  }

  @override
  void initState() {
    super.initState();
    getDogs();
    print(new DateTime.now().millisecondsSinceEpoch);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Storage Page'),
      ),
      body: Center(
        child: FlatButton(onPressed: addDog, child: Text('add')),
      ),
    );
  }
}
