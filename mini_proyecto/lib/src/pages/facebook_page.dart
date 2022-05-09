import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/widgets/utils.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({Key? key}) : super(key: key);
  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: crearTitulo("Facebook"),
        ),
        body: WebView(
          initialUrl: "www.facebook.com",
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
