import 'package:flutter/material.dart';
import 'package:h5_ccb_cifra/componets/menu_drawer.dart';
import 'home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info/package_info.dart';


class RateView extends StatelessWidget {
  const RateView({Key? key}) : super(key: key);

  void _launchStoreReview(BuildContext context) async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  String packageName = packageInfo.packageName;

  if (Theme.of(context).platform == TargetPlatform.android) {
    // URL para a página de avaliação na Play Store
    String url = 'https://play.google.com/store/apps/details?id=$packageName';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } else if (Theme.of(context).platform == TargetPlatform.iOS) {
    // URL para a página de avaliação na App Store
    String url = 'https://apps.apple.com/app/id$packageName?l=en&action=write-review';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

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
            Text(
              'Se você gostou do aplicativo, por favor, nos avalie na loja de aplicativos. Sua avaliação é muito importante para nós e nos ajuda a melhorar o aplicativo.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _launchStoreReview(context);
              },
              child: Text('Enviar Avaliação'),
              
            ),
          ],
        ),
      ),
    );
  }

}