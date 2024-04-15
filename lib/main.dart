import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/data/database_operations.dart';
import 'package:h5_ccb_cifra/views/home.dart';
import 'package:h5_ccb_cifra/views/favorite.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await DatabaseHelper.instance.deletarBanco();
  runApp(
    MaterialApp(
      home: HomeView(),
    ),
  );
}