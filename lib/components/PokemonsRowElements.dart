import 'package:flutter/material.dart';

class PokemonRowElements extends StatelessWidget {

  final List<String> _elements;

  PokemonRowElements(this._elements);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _elements.map((String tipo) {
        return Image.asset("assets/pokemons_types/"+tipo+".png", alignment: Alignment.centerRight, height: 25);
      }).toList(),
    );
  }
}