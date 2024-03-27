import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/data/database_operations.dart';
import 'package:h5_ccb_cifra/views/home.dart';
import 'package:h5_ccb_cifra/views/test.dart';
import 'package:h5_ccb_cifra/views/favorite.dart';

void main() async{
  runApp(
    MaterialApp(
      home: HomeView(),
    ),
  );
  final dbHelper = DatabaseHelper.instance;
  List<Map<String, dynamic>> hinos = await DatabaseHelper.instance.queryAllHinos();
}

