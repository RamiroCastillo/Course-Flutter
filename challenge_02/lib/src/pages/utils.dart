import 'package:flutter/material.dart';

Widget crearTitulo(titulo) {
  return Center(
    child: Text(
      titulo,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

Widget crearContenido(imagen, descripcion) {
  return Center(
    child: Padding(
      padding: EdgeInsets.all(50.0),
      child: Column(
        children: [
          Image(
            image: NetworkImage(imagen),
            width: 400.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            descripcion,
            style: TextStyle(fontSize: 30.0),
            textAlign: TextAlign.center,
          )
        ],
      ),
    ),
  );
}
