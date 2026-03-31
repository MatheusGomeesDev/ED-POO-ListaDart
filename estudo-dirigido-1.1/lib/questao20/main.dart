import 'pokemon.dart';
import 'treinador.dart';

void main() {

  Pokemon p1 = Pokemon(25, "Pikachu", "Eletrico", 50, 120);
  Pokemon p2 = Pokemon(6, "Charizard", "Fogo", 70, 200);
  Pokemon p3 = Pokemon(9, "Blastoise", "Agua", 65, 180);

  Treinador treinador = Treinador("Ash", p1, p2, p3);

  treinador.exibirTime();
  treinador.pokemonMaisForte();

}
