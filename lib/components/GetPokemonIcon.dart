import 'package:flutter/material.dart';

class GetPokemonIcon extends StatelessWidget {

  final _pokemon;

  GetPokemonIcon(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/pokemons/"+_pokemon.id+".png");
  }
}
