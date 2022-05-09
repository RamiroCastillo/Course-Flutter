import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/models/recipe.dart';
import 'package:mini_proyecto/src/pages/recipe_description_page.dart';
import 'package:mini_proyecto/src/providers/recipes_provider.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({Key? key}) : super(key: key);
  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg-ornament.jpg"),
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: _cargarElementos(context),
        ),
      ),
    );
  }

  Widget _cargarElementos(context) {
    return FutureBuilder(
        future: recipesProvider.cargarData(),
        initialData: const [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return Padding(
            padding: EdgeInsets.all(5),
            child: ListView(
              children: _listaItems(snapshot.data!, context),
            ),
          );
        });
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> recetas = [];
    for (var element in data) {
      List<String>? ingredients = element['ingredients'] != null
          ? List.from(element['ingredients'])
          : null;
      List<String>? preparation = element['preparation'] != null
          ? List.from(element['preparation'])
          : null;
      recetas.add(_crearItem(element['name'], element['time'], element['image'],
          ingredients!, preparation!));
    }
    return recetas;
  }

  Widget _crearItem(
      name, time, image, List<String> ingredients, List<String> preparation) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(
          "\u{23F2} Tiempo: $time minutos",
        ),
        leading: CircleAvatar(
          backgroundImage: Image(
            image: AssetImage(image),
          ).image,
        ),
        trailing: const Icon(
          Icons.sticky_note_2_rounded,
          color: Colors.red,
        ),
        onTap: () {
          print(ingredients);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RecipeDescriptionPage(
                      recipe: Recipe(
                          name, time, image, ingredients, preparation))));
        },
      ),
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.red, width: 1)),
    );
  }
}
