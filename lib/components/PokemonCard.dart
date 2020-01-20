import 'package:flutter/material.dart';
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
                  Row(
                    children: _pokemon.tipo.map((String tipo) {
                      return Image.asset(tipo, alignment: Alignment.centerRight);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Image.asset(_pokemon.icone),
          ),
        ],
      ),
    );
  }
}