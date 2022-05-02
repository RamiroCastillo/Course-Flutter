import 'package:flutter/material.dart';

class PaginaAbecedarioIncrementador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PaginaAbecedarioIncrementadorState();
}

class _PaginaAbecedarioIncrementadorState
    extends State<PaginaAbecedarioIncrementador> {
  final estiloTexto =
      TextStyle(fontSize: 240, fontWeight: FontWeight.bold, color: Colors.blue);
  int codeLetter = 65;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Challenge #1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(String.fromCharCode(codeLetter), style: estiloTexto)],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            onPressed: _previous, child: Icon(Icons.navigate_before)),
        SizedBox(width: 10.0),
        FloatingActionButton(onPressed: _next, child: Icon(Icons.navigate_next))
      ],
    );
  }

  void _previous() => setState(() {
        codeLetter--;
        if (codeLetter == 64) codeLetter = 90;
        //codeLetter = codeLetter == 64 ? 91 : codeLetter--;
      });

  void _next() => setState(() {
        //codeLetter = codeLetter == 91 ? 65 : codeLetter++;
        codeLetter++;
        if (codeLetter == 91) codeLetter = 65;
      });
}
