import 'package:flutter/material.dart';
import 'package:pokedexapplication/widgets/app_title.dart';
import 'package:pokedexapplication/widgets/pokemon_list_widget.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
   return  Scaffold(

     body:OrientationBuilder(
       builder: (context, orientation) =>
           Column(
         children: [
         AppTitle(),
         Expanded(child:   PokemonList()),
         ],
       ),
     ),


   );
  }


}
