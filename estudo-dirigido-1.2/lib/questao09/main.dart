import 'carro.dart';
import 'oficina.dart';

void main() {

  Carro carro = Carro('Fusca', 12000);
  Oficina oficina = Oficina();

  print('Antes da revisao:');
  carro.exibir();

  oficina.revisar(carro);

  print('Depois da revisao:');
  carro.exibir();

}
