import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/pages/facebook_page.dart';
import 'package:mini_proyecto/src/pages/favorites_page.dart';
import 'package:mini_proyecto/src/pages/home_page.dart';
import 'package:mini_proyecto/src/pages/ranking_page.dart';
import 'package:mini_proyecto/src/pages/twitter_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/HomePage': (context) => const HomePage(),
    '/bottomNav': (context) => const FavoritesPage(),
    '/tabs': (context) => const RankingPage(),
    'facebook': (context) => const FacebookPage(),
    'twitter': (context) => const TwitterPage()
  };
}
