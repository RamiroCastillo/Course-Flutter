import 'package:flutter/material.dart';

Widget crearTituloAppBar(titulo) {
  return Row(
    //mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset(
        'images/logo-f.png',
        fit: BoxFit.contain,
        height: 32,
      ),
      Container(padding: const EdgeInsets.all(8.0), child: Text('$titulo')),
    ],
  );
}

List<Widget> crearAcciones(context) {
  return [
    Center(
      child: Text(
        "¡Siguenos!",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
    Icon(Icons.double_arrow),
    IconButton(
        onPressed: () {
          Navigator.pushNamed(context, 'twitter');
        },
        icon: const Icon(Icons.camera_alt_outlined)),
    IconButton(
        onPressed: () {
          Navigator.pushNamed(context, 'facebook');
        },
        icon: const Icon(Icons.facebook)),
  ];
}

Widget crearTitulo(titulo) {
  return Text(
    titulo,
    style: const TextStyle(fontWeight: FontWeight.bold),
  );
}

Widget crearContenido(imagen, descripcion, time) {
  return Center(
    child: Padding(
      padding: EdgeInsets.all(50.0),
      child: Column(
        children: [
          Image(
            image: AssetImage(imagen),
            width: 100.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            descripcion,
            style: TextStyle(fontSize: 15.0),
            textAlign: TextAlign.center,
          ),
          Text(
            "\u{23F2} Tiempo: $time minutos",
            style: TextStyle(fontSize: 10.0),
            textAlign: TextAlign.center,
          )
        ],
      ),
    ),
  );
}
