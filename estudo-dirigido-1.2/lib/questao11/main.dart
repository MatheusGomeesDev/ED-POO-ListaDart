import 'endereco.dart';
import 'cliente.dart';

void main() {

  Cliente cliente1 = Cliente('Marina', Endereco('Rua A', 10, 'Curitiba'));
  Cliente cliente2 = Cliente.copia(cliente1);

  cliente2.endereco.alterarRua('Rua B');

  print('Cliente original:');
  cliente1.exibir();

  print('Cliente copiado:');
  cliente2.exibir();

}
