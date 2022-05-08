import 'package:challenge_02/src/pages/utils.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: crearTitulo("Página Oficial Dota 2"),
        ),
        body: WebView(
          initialUrl: "https://www.dota2.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
