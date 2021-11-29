import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedexapplication/model/pokemon_model.dart';
import 'package:pokedexapplication/services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}
class _PokemonListState extends State<PokemonList> {

  late Future<List<PokemonModel>> _pokemonListFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return FutureBuilder<List<PokemonModel>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {


          List<PokemonModel> _myList=snapshot.data!;

          return ListView.builder(itemCount: _myList.length,itemBuilder: (context, index){

            var nowPoke =_myList[index];
            return ListTile(
              title: Text(nowPoke.name.toString()) ,
            );

          });

        } else if (snapshot.hasError) {

          return const Center(
            child: Text("Veri Gelmedidi HATAAAAAA"),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}