import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/widgets/utils.dart';
import 'package:mini_proyecto/src/widgets/webview_base.dart';

class TwitterPage extends StatelessWidget {
  const TwitterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: crearTitulo("Twitter"),
        ),
        body: const WebViewBase("www.twitter.com"));
  }
}
