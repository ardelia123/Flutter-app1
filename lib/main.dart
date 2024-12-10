import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter_pklproject1/home/home_screen.dart';
import 'package:flutter_pklproject1/list/list_screen.dart';
import 'package:flutter_pklproject1/profil/profil_screen.dart';
import 'package:flutter_pklproject1/setting/setting_screen.dart';
import 'package:flutter_pklproject1/login/login_screen.dart';

import 'menu/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Device',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Color.fromARGB(255, 136, 138, 61),
          elevation: 3,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[50],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.lightGreen[400]!,
            ),
          ),
        ),
        textTheme: const TextTheme(
          caption: TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 50, 48, 48),
            height: 2,
          ),
        ),
      ),
      initialRoute: 'login',
      routes: {
        // 'splash': (context) => const SplashScreen(),
        'login': (context) => const LoginScreen(),
        // 'home': (context) => const HomeScreen(),
        'menu': (context) => const MenuScreen(),
      },
    );
  }
}
