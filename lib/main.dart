import 'package:flutter/material.dart';
import 'package:pokedexapplication/screens/home_screen.dart';
import 'package:pokedexapplication/services/pokedex_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
   debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen()
    );
  }
}

