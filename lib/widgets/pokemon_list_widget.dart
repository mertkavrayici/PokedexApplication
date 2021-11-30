import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedexapplication/model/pokemon_model.dart';
import 'package:pokedexapplication/services/pokedex_api.dart';
import 'package:pokedexapplication/widgets/pokelist_item.dart';

class PokemonList extends StatefulWidget {
 PokemonList({Key? key}) : super(key: key);

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

          return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2 :3),
          itemBuilder:(context , index) =>PokeListItem(pokemon:_myList[index]),
          );

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