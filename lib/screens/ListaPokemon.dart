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
    lista.add(Pokemon("001","Bulbasaur", "Pokemon repolho", ["grass","poison"],["fire","fly","Ice","Psychic"], ["001","002","003"]));
    lista.add(Pokemon("002","Ivysaur", "Pokemon repolho", ["grass","poison"],["fire","fly","Ice","Psychic"], ["001","002","003"]));
    lista.add(Pokemon("003","Venusaur", "Pokemon repolho", ["grass","poison"],["fire","fly","Ice","Psychic"], ["001","002","003"]));
    lista.add(Pokemon("004","Charmander", "Pokemon repolho", ["fire"],["ground","rock","water"],["004","005","006"]));
    lista.add(Pokemon("005","Charmeleon", "Pokemon repolho", ["fire"],["ground","rock","water"],["004","005","006"]));
    lista.add(Pokemon("006","Charizard", "Pokemon repolho", ["fire", "fly"],["rock","electric","water"],["004","005","006"]));
    lista.add(Pokemon("007","Squirtle", "Pokemon repolho", ["water"],["electric","grass"],["007","008","009"]));
    lista.add(Pokemon("008","Wartortle", "Pokemon repolho", ["water"],["electric","grass"],["007","008","009"]));
    lista.add(Pokemon("009","Blastoise", "Pokemon repolho", ["water"],["electric","grass"],["007","008","009"]));
    lista.add(Pokemon("010","Caterpie", "Pokemon repolho", ["bug"],["fire","fly","rock"],["010","011","012"]));
    lista.add(Pokemon("011","Metapod", "Pokemon repolho", ["bug"],["fire","fly","rock"],["010","011","012"]));
    lista.add(Pokemon("012","Butterfree", "Pokemon repolho", ["bug", "fly"],["fire","fly","rock","electric","ice"],["010","011","012"]));
    lista.add(Pokemon("013","Weedle", "Pokemon repolho", ["bug", "poison"],["fire","fly","psychic","rock"],["013","014","015"]));
    lista.add(Pokemon("014","Kakuna", "Pokemon repolho", ["bug", "poison"],["fire","fly","psychic","rock"],["013","014","015"]));
    lista.add(Pokemon("015","Beedrill", "Pokemon repolho", ["bug", "poison"],["fire","fly","psychic","rock"],["013","014","015"]));
    return lista;
  }
}