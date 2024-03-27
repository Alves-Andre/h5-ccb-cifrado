import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

Future<String> lerArquivo(int index) async {
  try {
    // Lê o conteúdo do arquivo
    File arquivo = File('assets/data/hino_1.txt');
    String conteudo = await arquivo.readAsString();
    return conteudo;
  } catch (e) {
    // Trate possíveis erros ao ler o arquivo
    print('assets/data/hino_$index.txt Erro ao ler o arquivo:  $e');
    return '';
  }
}

class HinoView extends StatelessWidget {
  HinoView({Key? key, required this.index}) : super(key: key);
  
  final int index;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: lerArquivo(index),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Se estiver carregando, retorne um widget de carregamento
          return Scaffold(
            appBar: AppBar(
              title: Text('Hino'),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          // Se ocorrer um erro, retorne uma mensagem de erro
          return Scaffold(
            appBar: AppBar(
              title: Text('Hino'),
            ),
            body: Center(
              child: Text('Erro ao carregar o hino.'),
            ),
          );
        } else {
          // Caso contrário, exiba o conteúdo do arquivo
          String cifra = snapshot.data!;
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
                          child: Text("titulo - nome",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) {
                              //adicionar padding entre os versos
                              return Column(
                                children: [
                                  ListTile(
                                    title: Text(""), // Usar o conteúdo do arquivo aqui
                                  ),
                                  Divider(
                                    height: 20, // Altura do espaçamento entre as linhas
                                    color: Colors.transparent, // Cor transparente para não ser visível
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
      },
    );
  }
}