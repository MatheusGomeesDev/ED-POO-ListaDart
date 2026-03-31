import 'motor.dart';
import 'carro.dart';

void main() {

  Carro carro1 = Carro("Civic", Motor(150, "Gasolina"));
  Carro carro2 = Carro("Corolla", Motor(180, "Flex"));

  carro1.exibirCarro();
  carro2.exibirCarro();

}
