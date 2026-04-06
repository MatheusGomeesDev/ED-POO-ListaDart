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
