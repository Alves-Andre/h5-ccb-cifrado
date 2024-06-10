import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:h5_ccb_cifra/componets/menu_drawer.dart';

class DonateView extends StatelessWidget {
  const DonateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doação'),
      ),
      drawer: MenuDrawer(scaffoldKey: GlobalKey<ScaffoldState>()), // Adiciona o menu lateral
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Doação',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'O H5 CCB Cifra é um aplicativo gratuito. \n'
              'Se você gostou do aplicativo e deseja contribuir com o desenvolvimento e manutenção do mesmo, você pode fazer uma doação para o desenvolvedor.\n\n'
              'As doações são opcionais e não são obrigatórias. \n'
              'Qualquer valor é bem-vindo e será muito apreciado.\n'
              'Para fazer uma doação, utilize a chave pix abaixo.\n\n',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Chave PIX: \n737f3ddb-3004-4767-aace-1b54781886dc\n',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(child: ElevatedButton(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: "737f3ddb-3004-4767-aace-1b54781886dc"));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Chave PIX copiada para a área de transferência!'),
                ));
              },
              child: Text('Copiar Chave PIX'),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Obrigado e Deus abençoe!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}