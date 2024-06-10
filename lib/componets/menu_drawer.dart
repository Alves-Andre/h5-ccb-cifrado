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
            ),
            child: Center(
              child: Text(
                'Hinário 5 CCB Cifrado',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Color.fromARGB(210, 0, 0, 0),),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Color.fromARGB(210, 0, 0, 0),),
            title: Text('Favoritos'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoriteView()),
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.star, color: Color.fromARGB(210, 0, 0, 0),),
            title: Text('Avaliar'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RateView()),
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.monetization_on, color: Color.fromARGB(210, 0, 0, 0),),
            title: Text('Doação'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DonateView()),
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Color.fromARGB(210, 0, 0, 0),),
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
            leading: Icon(Icons.exit_to_app, color: Color.fromARGB(210, 0, 0, 0),),
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