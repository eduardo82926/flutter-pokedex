import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_pokedex/components/GetPokemonIcon.dart';
import 'package:flutter_pokedex/components/PokemonsRowElements.dart';
import 'package:flutter_pokedex/models/Pokemon.dart';

class DescricaoPokemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Pokemon _squirtle = Pokemon(
        "007",
        "Squirtle",
        "Squirtle's shell is not merely used for protection. The shell's rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds.",
        ["water"],
        ["fire", "fly", "psychic", "rock"],
        ["007", "008", "009"]);
    return Scaffold(
      appBar: AppBar(
        title: Text(_squirtle.nome),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 215,
                    color: Colors.grey[300],
                    child: GetPokemonIcon(_squirtle),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CustomizedText(_squirtle.descricao),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: <Widget>[
                        Expanded(child: CustomizedText("Type")),
                        Expanded(
                          flex: 2,
                          child: PokemonRowElements(_squirtle.tipos),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: <Widget>[
                        Expanded(child: CustomizedText("Weaknesses")),
                        Expanded(
                          flex: 2,
                          child: PokemonRowElements(_squirtle.fraquezas),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: <Widget>[
                    CustomizedText("Evolutions"),
                    Row(
                      children: _squirtle.evolucoes.map((String id) {
                        if (id.contains(">")) {
                          return Expanded(
                            flex: 1,
                            child: Icon(Icons.arrow_forward),
                          );
                        }
                        return Expanded(
                          flex: 3,
                          child: Image.asset("assets/pokemons/" + id + ".png"),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomizedText extends StatelessWidget {
  final String _text;
  final TextAlign align;

  CustomizedText(this._text, {this.align = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      textAlign: align,
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}
