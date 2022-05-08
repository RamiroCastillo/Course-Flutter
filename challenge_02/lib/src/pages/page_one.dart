import 'package:challenge_02/src/pages/utils.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: crearTitulo("Página de Video Juegos"),
      ),
      body: Column(
        children: [
          crearContenido(
              "https://depor.com/resizer/8LllrHlTNJ5NJxtK5J0nYK8CVR8=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/Z4ACFMKYZVFZHPPR7PQE74TB2E.jpg",
              "Dota 2 es un videojuego perteneciente al género de Arena de batalla en línea ARTS («estrategia de acción en tiempo real»), también conocido como MOBA, lanzado el 9 de julio del año 2013. El juego fue desarrollado por la empresa Valve Corporation")
        ],
      ),
    );
  }
}
