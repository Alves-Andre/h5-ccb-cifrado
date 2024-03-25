//Tela onde será exibido o hino selecionado
//O sistema vai buscar o hino selecionado no arquivo /data/cifras.json a partir do indice recebido
//O sistema vai exibir o hino selecionado

import 'package:flutter/material.dart';



class HinoView extends StatelessWidget {
  const HinoView({Key? key, required this.index}) : super(key: key);
  //definir o parametro indice
  final int index;



  @override
  Widget build(BuildContext context) {
    Object obj = {
      "numero": 1,
      "titulo": "Cristo meu Mestre",
      "versos": [
        "Cristo meu Mestre e meu Senhor \nEu te adoro com fé com fervor \nRogo que guarde meu coração \nVem protegêlo com sua unção \n E defendê-lo, ó meu guardião",
        "Cristo meu Mestre e meu Senhor \nEu te adoro com fé com fervor \nRogo que guarde meu coração \nVem protegêlo com sua unção \n E defendê-lo, ó meu guardião"
      ],
      "coro": [],
      "final": [],
      "cifra-verso": [
        {
          "acorde": "C",
          "maior": "true",
          "posicao": [1]
        },
        {
          "acorde": "G",
          "maior": "true",
          "posicao": [12]
        },
        {
          "acorde": "D",
          "maior": "true",
          "posicao": [19]
        },
        {
          "acorde": "A",
          "maior": "false",
          "posicao": [25]
        }
      ],
      "cifra-coro": [],
      "cifra-final": []
    };
    return Scaffold(
      appBar: AppBar(
        title: Text('Hino'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      (obj as Map<String, dynamic>)['numero'].toString() +
                          ' - ' +
                          (obj as Map<String, dynamic>)['titulo'],
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: obj['versos'].length,
                      itemBuilder: (BuildContext context, int index) {
                        //adicionar padding entre os versos
                        return Column(
                          children: [
                            ListTile(
                              title: Text(obj['versos'][index]),
                            ),
                            Divider(
                              height:
                              20, // Altura do espaçamento entre as linhas
                              color: Colors
                                  .transparent, // Cor transparente para não ser visível
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> _loadHino(int index) async {
    return Future<String>.value('Hino $index');
  }
}
