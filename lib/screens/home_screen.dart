import 'package:flutter/material.dart';
import 'package:pokedexapplication/model/pokemon_model.dart';
import 'package:pokedexapplication/services/pokedex_api.dart';
import 'package:pokedexapplication/widgets/app_title.dart';
import 'package:pokedexapplication/widgets/pokemon_list_widget.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
   return  Scaffold(

     body:Column(
       children: [
       AppTitle(),
       Expanded(child: const  PokemonList()),
       ],
     ),


   );
  }


}
