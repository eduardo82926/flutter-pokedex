import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: double.maxFinite,
                child: Container(
                  height: 215,
                  child: GetPokemonIcon(_pokemon),
                ),
              ),
              Text('Description', style: TextStyle(fontSize: 24)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(_pokemon.descricao, style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: DataTable(
                    columns: [
                      DataColumn(
                          label: Text('Type', style: TextStyle(fontSize: 16))),
                      DataColumn(
                          label:
                              Text('Elements', style: TextStyle(fontSize: 16))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('Self', style: TextStyle(fontSize: 16))),
                        DataCell(PokemonRowElements(_pokemon.tipos)),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text('Weaknesses', style: TextStyle(fontSize: 16))),
                        DataCell(PokemonRowElements(_pokemon.fraquezas)),
                      ]),
                    ],
                  ),
                ),
              ),
              Container(
                //color: Colors.grey[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Evolutions", style: TextStyle(fontSize: 24)),
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
            ],
          ),
        ),
      ),
    );
  }
}
