import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/pages/favorites_page.dart';
import 'package:mini_proyecto/src/pages/ranking_page.dart';
import 'package:mini_proyecto/src/pages/recipes_page.dart';
import 'package:mini_proyecto/src/widgets/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabs = [
    const Center(child: RecipesPage()),
    const Center(child: FavoritesPage()),
    const Center(child: RankingPage()),
  ];
  int _currentindex = 0;
  String _title = "Recetas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: crearTituloAppBar(_title),
        backgroundColor: Colors.red,
        actions: crearAcciones(context),
      ),
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromRGBO(255, 141, 33, 1),
        selectedFontSize: 19.0,
        unselectedFontSize: 14.0,
        iconSize: 30.0,
        currentIndex: _currentindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Recetas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart_outlined),
            label: 'Mas Usadas',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
            switch (index) {
              case 0:
                {
                  _title = 'Recetas';
                }
                break;
              case 1:
                {
                  _title = 'Favoritos';
                }
                break;
              case 2:
                {
                  _title = 'Clasificación';
                }
                break;
            }
          });
        },
      ),
    );
  }
}
