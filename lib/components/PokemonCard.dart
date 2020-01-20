import 'package:flutter/material.dart';
import 'package:flutter_pokedex/components/GetPokemonIcon.dart';
import 'package:flutter_pokedex/components/PokemonsRowElements.dart';
import 'package:flutter_pokedex/models/Pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon _pokemon;

  PokemonCard(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(_pokemon.nome, textScaleFactor: 1, textAlign: TextAlign.left),
                  PokemonRowElements(_pokemon.tipos),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: GetPokemonIcon(_pokemon),
          ),
        ],
      ),
    );
  }
}