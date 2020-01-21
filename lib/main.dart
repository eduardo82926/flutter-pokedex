import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/screens/DescricaoPokemon.dart';
import 'package:flutter_pokedex/screens/ListaPokemon.dart';

void main() => runApp(FlutterPokedex());

class FlutterPokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaPokemon(),
      theme: ThemeData(
        primaryColor: Colors.red[900],
      ),
    );
  }
}