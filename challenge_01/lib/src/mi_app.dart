import 'package:challenge_01/src/pages/pagina_abecedario_incrementador.dart';
import 'package:flutter/material.dart';

class MiApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: PaginaAbecedarioIncrementador(),
      ),
    );
  }
}
