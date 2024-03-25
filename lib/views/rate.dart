import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/componets/menu_drawer.dart';
import 'home.dart';

class RateView extends StatelessWidget {
  const RateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avaliar Aplicativo'),
      ),
      drawer: MenuDrawer(scaffoldKey: GlobalKey<ScaffoldState>()), // Adiciona o menu lateral
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nos dê sua opinião:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Aqui você pode adicionar o formulário de avaliação
            // Exemplo: StarRating(), TextFormField(), etc.
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para enviar a avaliação
              },
              child: Text('Enviar Avaliação'),
            ),
          ],
        ),
      ),
    );
  }

}