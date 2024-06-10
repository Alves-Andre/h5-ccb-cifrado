import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HinoView extends StatelessWidget {
  final String index;
  final String? titulo;
  HinoView({required this.index, this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hinário 5 CCB Cifrado"),
      ),
      body: FutureBuilder<String>(
        future: _loadHtmlFromAssets(index),
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
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    titulo!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: WebView(
                    zoomEnabled: false,
                    initialUrl: Uri.dataFromString(
                      _filtrarHino(snapshot.data!),
                      mimeType: 'text/html',
                      encoding: Encoding.getByName('utf-8'),
                    ).toString(),
                    javascriptMode: JavascriptMode.unrestricted,
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Future<String> _loadHtmlFromAssets(String index) async {
    return await rootBundle.loadString('assets/data/cifras/hino' + index + '.html');
  }

  String _filtrarHino(String htmlContent) {
  String javaScriptCode = '''
    <style>
      * {
        font-size: 30px;
      }
      b {
        color: orange;
      }
      body {
        margin: 0;
        padding: 0;
        overflow-x: hidden;
        max-width: 100%;
        word-wrap: break-word;
      }
      pre {
        white-space: pre-wrap; /* CSS3 */
        white-space: -moz-pre-wrap; /* Firefox */
        white-space: -pre-wrap; /* Opera <7 */
        white-space: -o-pre-wrap; /* Opera 7 */
        word-wrap: break-word; /* IE */
      }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=0.35, user-scalable=no">
  ''';
  return '<html><head>$javaScriptCode</head><body>$htmlContent</body></html>';
}
}
