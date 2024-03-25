import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/views/hino.dart';
import 'package:h5_ccb_cifra/componets/menu_drawer.dart';
import 'package:h5_ccb_cifra/views/home.dart';

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

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  _FavoriteViewState createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  String _searchText = "";
  int _selectedIndex = 0;
  bool _showFavoritesOnly = true;
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> hinosExibidos = hinos
        .where((hino) =>
            (hino["favorito"]) &&
            hino["titulo"].toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('H5 CCB Cifra - Favoritos backup'),
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              if (_scaffoldKey.currentState != null) {
                _scaffoldKey.currentState!.openDrawer();
              }
            },
          ),
      ),
      drawer: MenuDrawer(scaffoldKey: _scaffoldKey),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Pesquisar',
              ),
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: hinosExibidos.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    'assets/icons/music-book.png',
                    width: 20,
                    height: 20,
                  ),
                  title: Text(hinosExibidos[index]["titulo"]),
                  trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        hinosExibidos[index]["favorito"] =
                            !hinosExibidos[index]["favorito"];
                      });
                    },
                    child: hinosExibidos[index]["favorito"]
                        ? Image.asset(
                            "assets/icons/favorite-on.png",
                            width: 25,
                            height: 25,
                          )
                        : Image.asset(
                            "assets/icons/favorite-off.png",
                            width: 25,
                            height: 25,
                          ),
                  ),
                  shape: Border(bottom: BorderSide(color: Colors.black)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HinoView(index: index),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color:Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
                color:  Color.fromARGB(255, 46, 0, 54)),
            label: 'Favoritos',
          ),
        ],
        currentIndex: _showFavoritesOnly ? 1 : 0,
        onTap: (index) {
          setState(() {
            if (index == 0) {
              // A lógica do onTap é acionada apenas quando o índice selecionado é igual a 0 (botão "Home")
              _selectedIndex = index;
              _showFavoritesOnly = false; // Mostrar todos os hinos
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeView()),
              );
            }
          });
        },
      ),
    );
  }
}
