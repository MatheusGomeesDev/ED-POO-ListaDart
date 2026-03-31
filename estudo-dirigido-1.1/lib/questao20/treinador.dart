import 'pokemon.dart';

class Treinador {

  String _nome;
  Pokemon _pokemon1;
  Pokemon _pokemon2;
  Pokemon _pokemon3;

  Treinador(this._nome, this._pokemon1, this._pokemon2, this._pokemon3) {
    if(_nome.isEmpty) {
      throw ArgumentError('O nome do treinador nao pode ser vazio');
    }
    if(_pokemon1 == null || _pokemon2 == null || _pokemon3 == null) {
      throw ArgumentError('Pokemons invalidos');
    }
  }

  int calcularPoderTotal() {
    return _pokemon1.nivel +
           _pokemon2.nivel +
           _pokemon3.nivel;
  }

  pokemonMaisForte() {
    Pokemon maisForte = _pokemon1;

    if(_pokemon2.nivel > maisForte.nivel) {
      maisForte = _pokemon2;
    }
    if(_pokemon3.nivel > maisForte.nivel) {
      maisForte = _pokemon3;
    }

    print("Pokemon mais forte:");
    maisForte.exibirPokemon();
  }

  exibirTime() {
    print("Treinador: $_nome");
    print("=======================================");
    _pokemon1.exibirPokemon();
    _pokemon2.exibirPokemon();
    _pokemon3.exibirPokemon();
    print("Poder Total: ${calcularPoderTotal()}");
    print("=======================================");
  }

}
