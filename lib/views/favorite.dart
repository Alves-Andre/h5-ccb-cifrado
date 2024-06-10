import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/componets/bottom_navigation_bar.dart';
import 'package:h5_ccb_cifra/componets/custom_snackbar.dart';
import 'package:h5_ccb_cifra/componets/menu_drawer.dart';
import 'package:h5_ccb_cifra/componets/search_input.dart';
import 'package:h5_ccb_cifra/data/database_operations.dart';
import 'package:h5_ccb_cifra/views/hino.dart';
import 'package:h5_ccb_cifra/views/home.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  _FavoriteViewState createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  int _selectedIndex = 1; // Destacar o botão "Favoritos"
  bool _showFavoritesOnly = true;
  String _searchText = "";
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Map<String, dynamic>> _hinos = [];

  @override
  void initState() {
    super.initState();
    _initializeHinos();
  }

  Future<void> _initializeHinos() async {
    _hinos = await getHinos(); // Função para obter hinos favoritos
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> hinosExibidos = _hinos
        .where((hino) =>
            (!_showFavoritesOnly || hino["favorito"] == 1) &&
            hino["titulo"].toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('H5 CCB Cifra - Favoritos'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      drawer: MenuDrawer(scaffoldKey: _scaffoldKey),
      body: Center(
        child: Column(
          children: <Widget>[
            SearchInput(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                },
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
                        final numero = hinosExibidos[index]['numero'];
                          final favorito = hinosExibidos[index]["favorito"] == 0;
                          CustomSnackBar.showFavoriteSnackBar(context, favorito);
                          DatabaseHelper.instance.toggleFavorite(numero, favorito);
                          _initializeHinos();
                      },
                      child: hinosExibidos[index]['favorito'] == 1
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
                          builder: (context) => HinoView(index: (index+1).toString().padLeft(3, '0'),titulo: hinosExibidos[index]["titulo"],),
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
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onTabTapped: (index) {
          setState(() {
            _selectedIndex = index;
            _showFavoritesOnly = _selectedIndex == 1;
            if (_selectedIndex == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeView(),
                ),
              ).then((_) => _initializeHinos());
            }
          });
        },
      ),
    );
  }
}