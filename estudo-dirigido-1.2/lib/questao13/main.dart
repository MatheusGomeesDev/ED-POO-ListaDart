import 'carteira.dart';
import 'pessoa.dart';

void main() {

  Pessoa? p1 = Pessoa('Lucas', Carteira(100));
  Pessoa? p2 = p1;

  print('Estado inicial:');
  p1!.exibir();
  p2!.exibir();

  p2.carteira.adicionar(50);

  print('\nDepois de alterar a carteira por p2:');
  p1.exibir();
  p2.exibir();

  p1 = null;
  print('\nDepois de p1 = null:');
  print('p1: $p1');
  p2.exibir();

  p2 = null;
  print('\nDepois de p2 = null:');
  print('p2: $p2');

}
