import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/pages/favorites_page.dart';
import 'package:mini_proyecto/src/pages/home_page.dart';
import 'package:mini_proyecto/src/pages/ranking_page.dart';
import 'package:mini_proyecto/src/splash.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (context) => Splash(),
    '/HomePage': (context) => HomePage(),
    '/bottomNav': (context) => const FavoritesPage(),
    '/tabs': (context) => const RankingPage(),
  };
}
