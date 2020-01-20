import 'package:flutter/material.dart';
import 'package:flutter_pokedex/components/PokemonCard.dart';
import 'package:flutter_pokedex/models/Pokemon.dart';

class ListaPokemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: criaPokedex().map((Pokemon pokemon){
          return PokemonCard(pokemon);
        }).toList(),
      ),
    );
  }

  List<Pokemon> criaPokedex (){
    List<Pokemon> lista = List();
    lista.add(Pokemon("001","Bulbasaur", "Pokemon repolho", ["assets/pokemons_types/grass.png","assets/pokemons_types/poison.png"],["assets/pokemons_types/fire.png"], ["001","002","003"]));
//    lista.add(Pokemon("Ivysaur", "assets/pokemons/002.png", ["assets/pokemons_types/grass.png","assets/pokemons_types/poison.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Venusaur", "assets/pokemons/003.png", ["assets/pokemons_types/grass.png","assets/pokemons_types/poison.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Charmander", "assets/pokemons/004.png", ["assets/pokemons_types/fire.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Charmeleon", "assets/pokemons/005.png", ["assets/pokemons_types/fire.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Charizard", "assets/pokemons/006.png", ["assets/pokemons_types/fire.png", "assets/pokemons_types/fly.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Squirtle", "assets/pokemons/007.png", ["assets/pokemons_types/water.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Wartortle", "assets/pokemons/008.png", ["assets/pokemons_types/water.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Blastoise", "assets/pokemons/009.png", ["assets/pokemons_types/water.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Caterpie", "assets/pokemons/010.png", ["assets/pokemons_types/bug.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Metapod", "assets/pokemons/011.png", ["assets/pokemons_types/bug.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Butterfree", "assets/pokemons/012.png", ["assets/pokemons_types/bug.png", "assets/pokemons_types/fly.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Weedle", "assets/pokemons/013.png", ["assets/pokemons_types/bug.png", "assets/pokemons_types/poison.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Kakuna", "assets/pokemons/014.png", ["assets/pokemons_types/bug.png", "assets/pokemons_types/poison.png"],["assets/pokemons_types/fire.png"]));
//    lista.add(Pokemon("Beedrill", "assets/pokemons/015.png", ["assets/pokemons_types/bug.png", "assets/pokemons_types/poison.png"],["assets/pokemons_types/fire.png"]));
    return lista;
  }
}