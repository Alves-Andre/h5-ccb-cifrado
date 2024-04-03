import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  String conteudo = await rootBundle.loadString('assets/data/hino1.txt');
  print(conteudo);
}