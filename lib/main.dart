
import 'package:fekra/sql_helper.dart';
import 'package:fekra/table.dart';
import 'package:flutter/material.dart';

void main() {
  var sqlHelper = SqlHelper();
  sqlHelper.db;
  
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demmo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: TablePage(),
    );
  }
}