import 'carro.dart';

class Oficina {

  revisar(Carro carro) {
    print("Realizando revisao e teste de rodagem...");
    carro.adicionarQuilometragem(50);
  }

}
