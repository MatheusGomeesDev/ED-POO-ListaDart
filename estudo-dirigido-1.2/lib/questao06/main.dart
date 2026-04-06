import 'retangulo.dart';

void main() {

  Retangulo retangulo1 = Retangulo(5, 3);
  Retangulo retangulo2 = Retangulo.unitario();
  Retangulo retangulo3 = Retangulo.quadrado(4);

  retangulo1.exibirDados();
  retangulo2.exibirDados();
  retangulo3.exibirDados();

}
