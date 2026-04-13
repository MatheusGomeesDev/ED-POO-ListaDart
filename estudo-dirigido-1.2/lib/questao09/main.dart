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

// a) Por que a quilometragem do carro foi alterada mesmo sem retornar um novo objeto?
// Porque quando passamos um objeto como parametro em Dart, estamos passando a referencia
// para o mesmo objeto na memoria. O metodo revisar() recebe a referencia do carro original,
// entao qualquer alteracao feita dentro do metodo afeta diretamente o objeto criado no main.

// b) O parametro recebido pelo metodo revisar() representa um novo carro ou o mesmo objeto criado no main?
// Representa o mesmo objeto criado no main. Nao e criado um novo carro, apenas uma copia
// da referencia e passada para o parametro do metodo.
