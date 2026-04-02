import 'personagem.dart';

void main() {

  Personagem p1 = Personagem("Guerreiro", 100, 20);
  Personagem p2 = Personagem("Orc", 80, 15);

  while(p1.estaVivo() && p2.estaVivo()) {

    p1.atacar(p2);
    p2.exibirStatus();

    if (!p2.estaVivo()) break;

    p2.atacar(p1);
    p1.exibirStatus();
  }

  print("Combate encerrado");
}
