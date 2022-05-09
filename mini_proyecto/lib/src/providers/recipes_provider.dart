import 'dart:convert';

import 'package:flutter/services.dart';

class _RecipesProvider {
  List<dynamic> lista = [];
  Future<List<dynamic>> cargarData() async {
    final response = await rootBundle.loadString("data/recipes.json");
    Map dataMap = json.decode(response);
    lista = dataMap['recipes'];
    return lista;
  }
}

final recipesProvider = _RecipesProvider();
