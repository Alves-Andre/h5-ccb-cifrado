import 'package:h5_ccb_cifra/views/favorite.dart';

List<Map<String, dynamic>> getMyList() {
  List<Map<String, dynamic>> hinos = [
    {
        "numero": 1,
        "titulo": "1 - Cristo Meu Mestre",
        "favorito": true
    },
    {
      "numero": 2,
      "titulo": "2 - De Deus tu és Eleita",
      "favorito": false
    }
  ];
  return hinos;
}

class HinoManager {
  static final HinoManager _instance = HinoManager._internal();

  factory HinoManager() {
    return _instance;
  }

  HinoManager._internal();

  List<Map<String, dynamic>> hinos = getMyList();

  void toggleFavorite(int index) {
    hinos[index]['favorito'] = !hinos[index]['favorito'];
  }
}

final hinoManager = HinoManager();