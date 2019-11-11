import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:store_v2/view/pages/product/product.dart';

class CartDB {
  static Database _database;
  CartDB._privateConstructor();
  static final CartDB instance = CartDB._privateConstructor();
  static final _databaseName = "cart2.db";
  static final _databaseVersion = 1;

  String tableName = "cart";
  String colId = "id";
  String colName = "name";
  String colPrice = "price";
  String colImages = "images";
  String colSize = "size";
  String colPicked = "picked";
  String colNumber = "number";
  String colDate = "date";

  Future<Database> get database async {
    if (_database == null) {
      _database = await _initDatabase();
    }
    return _database;
  }

  Future<Database> _initDatabase() async {
    // Get the directory path for both Android and iOS to store database.
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _databaseName);

    // Open/create the database at a given path
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _createDb);
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute('CREATE TABLE $tableName($colName TEXT, $colPrice TEXT, '
        '$colImages TEXT, $colSize TEXT, $colPicked TEXT, $colNumber TEXT,'
        ' $colDate DATETIME DEFAULT CURRENT_TIMESTAMP)');
  }

  Future<dynamic> insertProduct(Product product) async {
    Database db = await this.database;
    var result = await db.insert(tableName, product.toMap());
    return result;
  }

  Future<dynamic> updateProduct(Product product) async {
    Database db = await this.database;
    var result = await db.update(tableName, product.toMap(),
        where: '$colName = ?', whereArgs: [product.name]);
    return result;
  }

  Future<bool> existProduct(String name) async {
    Database db = await this.database;
    List<Map<String, dynamic>> result = await db.query(
      tableName,
      where: '$colName= ?',
      whereArgs: [name],
    );
    return result.length == 0 ? false : true;
  }

  Future<dynamic> deleteProduct(String name) async {
    Database db = await this.database;
    var result =
        await db.delete(tableName, where: '$colName = ?', whereArgs: [name]);
    return result;
  }

  Future<List<Product>> getProducts() async {
    Database db = await this.database;
    List<Map> _listMapProduct = await db.query(tableName);
    List<Product> _listProduct = [];
    _listMapProduct.forEach((productAsMap) {
      _listProduct.add(Product(
        name: productAsMap["name"],
        price: productAsMap["price"],
        images: [productAsMap["images"]],
        size: [productAsMap["size"]],
        picked: productAsMap["picked"],
        number: productAsMap["number"],
      ));
    });
    return _listProduct;
  }

  Future close() async {
    Database db = await this.database;
    await db.close();
  }
}
