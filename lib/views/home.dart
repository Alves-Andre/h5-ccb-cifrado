import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/data/datahinos.dart';
import 'package:h5_ccb_cifra/views/favorite.dart';
import 'package:h5_ccb_cifra/views/hino.dart';
import 'package:h5_ccb_cifra/views/rate.dart';
import 'package:h5_ccb_cifra/componets/menu_drawer.dart';
import 'package:h5_ccb_cifra/data/datahinos.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isStarred = false;
  int _selectedIndex = 0;
  bool _showFavoritesOnly = false;
  String _searchText = "";
  final TextEditingController _searchController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> hinosExibidos = hinoManager.hinos
        .where((hino) =>
            (!_showFavoritesOnly || hino["favorito"]) &&
            hino["titulo"].toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('H5 CCB Cifra - Home'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
        ),
        drawer: 
          MenuDrawer(scaffoldKey: _scaffoldKey),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pesquisar',
                  ),
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
                            (hinosExibidos[index]["favorito"] == true)
                                ? hinosExibidos[index]["favorito"] = false
                                : hinosExibidos[index]["favorito"] = true;
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
                      shape: Border(
                          bottom: BorderSide(color: Colors.black)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  HinoView(index: index),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: Color.fromARGB(255, 46, 0, 54)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,
                  color: Colors.grey),
              label: 'Favoritos',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              _showFavoritesOnly = _selectedIndex == 1;
              
              if (_selectedIndex == 1) {
                // Navegar para a tela de Favoritos
                Navigator.push(
                  context,
                  MaterialPageRoute(fullscreenDialog: true, builder: (context) => FavoriteView()),
                );
              }
            });
          },
        ),
      ),
    );
  }
}