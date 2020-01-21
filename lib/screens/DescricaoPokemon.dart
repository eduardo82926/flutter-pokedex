import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_pokedex/components/GetPokemonIcon.dart';
import 'package:flutter_pokedex/components/PokemonsRowElements.dart';
import 'package:flutter_pokedex/models/Pokemon.dart';

class DescricaoPokemon extends StatelessWidget {

  final Pokemon _pokemon;

  DescricaoPokemon(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pokemon.nome),
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
                    child: GetPokemonIcon(_pokemon),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CustomizedText(_pokemon.descricao),
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
                          child: PokemonRowElements(_pokemon.tipos),
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
                          child: PokemonRowElements(_pokemon.fraquezas),
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
                      children: _pokemon.evolucoes.map((String id) {
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
