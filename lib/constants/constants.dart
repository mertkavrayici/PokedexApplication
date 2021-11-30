import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants{

   Constants._();

   static const String title='Pokedex';
  static  TextStyle titleStyle(){

    return const TextStyle(
      color:Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48

    );

  }
   static  TextStyle pokemonNameStyle(){

     return const TextStyle(
         color:Colors.white,
         fontWeight: FontWeight.bold,
         fontSize: 30

     );

   }
   static  TextStyle pokemonTypeChipStyle(){

     return const TextStyle(
         color:Colors.white,

         fontSize: 20

     );

   }

}