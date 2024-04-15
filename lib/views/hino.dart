import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HinoView extends StatelessWidget {
  final String index;
  HinoView({required this.index});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Hino View'),
      ),
      body: FutureBuilder<String>(
        future: _loadHtmlFromAssets(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Erro ao carregar o hino.'),
            );
          } else {
            return WebView(
              initialUrl: Uri.dataFromString(
                _filtrarHino(snapshot.data!),
                mimeType: 'text/html',
                encoding: Encoding.getByName('utf-8'),
              ).toString(),
              javascriptMode: JavascriptMode.unrestricted,
            );
          }
        },
      ),
    );
  }

  Future<String> _loadHtmlFromAssets() async {
    return await rootBundle.loadString('assets/data/cifras-hinario.html');
  }
  String _filtrarHino(String htmlContent) {
    String javaScriptCode = '''
      <script>
        // Oculta todas as tags <pre>
        var elementos = document.getElementsByTagName("pre");
        for (var i = 0; i < elementos.length; i++) {
            elementos[i].style.display = "none";
        }
        
        // Exibe apenas a tag <pre> com o ID desejado
        var hino = document.getElementById("''' + index.toString() + '''");
        if (hino) {
            hino.style.display = "block";
        }
      </script>
    ''';
  return htmlContent + javaScriptCode;
}
}
