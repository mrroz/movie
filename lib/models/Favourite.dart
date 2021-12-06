//
// import 'package:movie2/controllers/DBController.dart';
// import 'package:sqflite/sqflite.dart';
//
// class Dog {
//   final int id;
//   final String name;
//   final int age;
//
//   Dog({
//     required this.id,
//     required this.name,
//     required this.age,
//   });
//
//
//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       'age': age,
//     };
//   }
//
//
//   @override
//   String toString() {
//     return 'Dog{id: $id, name: $name, age: $age}';
//   }
//
//
//   Future<void> insertDog(Dog dog) async {
//     final db = await database;
//
//
//     await db.insert(
//       'dogs',
//       dog.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }
//
//
// }