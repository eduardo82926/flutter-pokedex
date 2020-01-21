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
    lista.add(Pokemon("001","Bulbasaur", "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.", ["grass","poison"],["fire","fly","Ice","Psychic"], ["001","002","003"]));
    lista.add(Pokemon("002","Ivysaur", "There is a bud on this Pokémon's back. To support its weight, Ivysaur's legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it's a sign that the bud will bloom into a large flower soon.", ["grass","poison"],["fire","fly","Ice","Psychic"], ["001","002","003"]));
    lista.add(Pokemon("003","Venusaur", "There is a large flower on Venusaur's back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower's aroma soothes the emotions of people.", ["grass","poison"],["fire","fly","Ice","Psychic"], ["001","002","003"]));
    lista.add(Pokemon("004","Charmander", "The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.", ["fire"],["ground","rock","water"],["004","005","006"]));
    lista.add(Pokemon("005","Charmeleon", "Charmeleon mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.", ["fire"],["ground","rock","water"],["004","005","006"]));
    lista.add(Pokemon("006","Charizard", "Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.", ["fire", "fly"],["rock","electric","water"],["004","005","006"]));
    lista.add(Pokemon("007","Squirtle", "Squirtle's shell is not merely used for protection. The shell's rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds.", ["water"],["electric","grass"],["007","008","009"]));
    lista.add(Pokemon("008","Wartortle", "Its tail is large and covered with a rich, thick fur. The tail becomes increasingly deeper in color as Wartortle ages. The scratches on its shell are evidence of this Pokémon's toughness as a battler.", ["water"],["electric","grass"],["007","008","009"]));
    lista.add(Pokemon("009","Blastoise", "Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.", ["water"],["electric","grass"],["007","008","009"]));
    lista.add(Pokemon("010","Caterpie", "Caterpie has a voracious appetite. It can devour leaves bigger than its body right before your eyes. From its antenna, this Pokémon releases a terrifically strong odor.", ["bug"],["fire","fly","rock"],["010","011","012"]));
    lista.add(Pokemon("011","Metapod", "The shell covering this Pokémon's body is as hard as an iron slab. Metapod does not move very much. It stays still because it is preparing its soft innards for evolution inside the hard shell.", ["bug"],["fire","fly","rock"],["010","011","012"]));
    lista.add(Pokemon("012","Butterfree", "Butterfree has a superior ability to search for delicious honey from flowers. It can even search out, extract, and carry honey from flowers that are blooming over six miles from its nest.", ["bug", "fly"],["fire","fly","rock","electric","ice"],["010","011","012"]));
    lista.add(Pokemon("013","Weedle", "Weedle has an extremely acute sense of smell. It is capable of distinguishing its favorite kinds of leaves from those it dislikes just by sniffing with its big red proboscis (nose).", ["bug", "poison"],["fire","fly","psychic","rock"],["013","014","015"]));
    lista.add(Pokemon("014","Kakuna", "Kakuna remains virtually immobile as it clings to a tree. However, on the inside, it is extremely busy as it prepares for its coming evolution. This is evident from how hot the shell becomes to the touch.", ["bug", "poison"],["fire","fly","psychic","rock"],["013","014","015"]));
    lista.add(Pokemon("015","Beedrill", "Beedrill is extremely territorial. No one should ever approach its nest—this is for their own safety. If angered, they will attack in a furious swarm.", ["bug", "poison"],["fire","fly","psychic","rock"],["013","014","015"]));
    return lista;
  }
}