import 'package:challenge_02/src/pages/home_page.dart';
import 'package:challenge_02/src/pages/page_one.dart';
import 'package:challenge_02/src/pages/page_two.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: UnoPage(),
      home: HomePage(),
      routes: {
        '1': (context) => PageOne(),
        '2': (context) => PageTwo(),
      },
    );
  }
}
