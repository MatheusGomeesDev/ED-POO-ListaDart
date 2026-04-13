import 'personagem.dart';

void main() {

  Personagem p1 = Personagem('Arthas', 100, 80);
  Personagem p2 = p1;

  print('Antes da alteracao:');
  p1.exibir();
  p2.exibir();

  p2.alterarVida(50);

  print('\nDepois da alteracao:');
  p1.exibir();
  p2.exibir();

}

// a) Por que, ao alterar a segunda variavel, a primeira tambem apresentou a alteracao?
// Porque p1 e p2 apontam para o mesmo objeto, entao qualquer alteracao feita por uma afeta a outra.

// b) Esse comportamento esta correto?
// Sim, em Dart os objetos sao manipulados por referencia. Quando a gente faz p2 = p1,
// as duas variaveis passam a apontar para o mesmo espaco na memoria.
