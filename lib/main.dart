import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/data/database_operations.dart';
import 'package:h5_ccb_cifra/views/home.dart';
import 'package:h5_ccb_cifra/views/favorite.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  debugShowCheckedModeBanner: false;
  // DatabaseHelper.instance.deletarBanco();
  // sqfliteFfiInit();
  // databaseFactory = databaseFactoryFfi;
  await DatabaseHelper.instance.initDatabase(); 
  runApp(
    MaterialApp(
      home: HomeView(),
    ),
  );
}