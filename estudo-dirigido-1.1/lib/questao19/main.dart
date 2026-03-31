import 'comodo.dart';
import 'casa.dart';

void main() {

  Comodo c1 = Comodo("Sala", 20);
  Comodo c2 = Comodo("Quarto", 15);
  Comodo c3 = Comodo("Cozinha", 10);

  Casa casa = Casa("Matheus", c1, c2, c3);

  casa.exibirCasa();

}
