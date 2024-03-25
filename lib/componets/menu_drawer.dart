import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/views/about.dart';
import 'package:h5_ccb_cifra/views/donate.dart';
import 'package:h5_ccb_cifra/views/favorite.dart';
import 'package:h5_ccb_cifra/views/home.dart';
import 'package:h5_ccb_cifra/views/rate.dart';
import 'dart:io';

class MenuDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MenuDrawer({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeView()),
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favoritos'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavoriteView()),
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Avaliar'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RateView()),
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('Doação'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DonateView()),
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutView()),
                );
              // Adicione a lógica para a tela Sobre
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () {
              exit(0);
              // Adicione a lógica para sair do aplicativo
            },
          ),
        ],
      ),
    );
  }
}