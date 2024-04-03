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
  //await dbHelper.resetDatabase();
  List<Map<String, dynamic>> hinos = await DatabaseHelper.instance.queryAllHinos();

  print(hinos);

  //Testar funcao de adicionar cifra
  await dbHelper.addCifra(1, 'hino1.txt');
  //printar na tela todas as cifras
  print(await dbHelper.queryCifra(1));
}

