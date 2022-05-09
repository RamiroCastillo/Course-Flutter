import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/models/recipe.dart';
import 'package:mini_proyecto/src/widgets/utils.dart';

class RecipeDescriptionPage extends StatelessWidget {
  final Recipe recipe;
  const RecipeDescriptionPage({Key? key, required this.recipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: crearTitulo("Descripción de Recetas"),
      ),
      body: Column(
        children: [crearContenido(recipe.image, recipe.name, recipe.time)],
      ),
    );
  }
}
