import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/pages/error_page.dart';
import 'package:mini_proyecto/src/pages/home_page.dart';
import 'package:mini_proyecto/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: const Icon(
          Icons.dinner_dining,
          size: 150.0,
          color: Colors.white,
        ),
        duration: 1000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.red,
        nextScreen: HomePage(),
      ),
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return ErrorPage();
        });
      },
    );
  }
}
