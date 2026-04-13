import 'televisao.dart';
import 'controle_remoto.dart';

void main() {

  Televisao tv = Televisao(5, 20);
  ControleRemoto controle = ControleRemoto(tv);

  print('Estado inicial:');
  tv.exibir();

  controle.aumentarVolume();
  controle.proximoCanal();

  print('Depois de usar o controle:');
  tv.exibir();

}

// a) Por que o controle remoto consegue alterar diretamente o estado da televisao?
// Pois o controle remoto recebe no construtor uma referencia para o objeto Televisao.
// Ao chamar metodos como aumentarVolume() e proximoCanal(), o controle esta manipulando
// o mesmo objeto Televisao que foi criado no main, e nao uma copia dele.

// b) O controle remoto possui uma copia da televisao ou uma referencia para o mesmo objeto?
// Possui uma referencia para o mesmo objeto. Pois ao usar o controle para alterar 
// volume e o canal também reflete no main

