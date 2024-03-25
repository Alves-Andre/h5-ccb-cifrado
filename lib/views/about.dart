//Página que fala sobre o app

import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/componets/menu_drawer.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o Aplicativo'),
      ),
      drawer: MenuDrawer(scaffoldKey: GlobalKey<ScaffoldState>()), // Adiciona o menu lateral
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sobre o Aplicativo',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'O H5 CCB Cifra é um aplicativo que reúne hinos da Congregação Cristã no Brasil com cifras para violão'
              'O aplicativo foi desenvolvido com o intuito de facilitar a vida dos músicos e instrumentistas que desejam tocar os hinos da CCB. '
              'Além disso, o aplicativo conta com recursos como favoritar hinos, pesquisar hinos por número ou título, e avaliar o aplicativo.'
              'Esperamos que o aplicativo seja útil para você e que possa te ajudar a louvar a Deus através da música.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Desenvolvedor:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'André da Silva Alves',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Email para contato:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'andredasillvaa376@gmail.com',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Versão:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1.0.0',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}