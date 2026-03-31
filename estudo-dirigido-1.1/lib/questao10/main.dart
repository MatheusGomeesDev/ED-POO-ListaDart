import 'quadrado.dart';

void main() {

  Quadrado quadrado1 = Quadrado(2, "-");
  quadrado1.exibirDados();
  quadrado1.desenhar();

  Quadrado quadrado2 = Quadrado(6, "X");
  quadrado2.exibirDados();
  quadrado2.desenhar();

   Quadrado quadrado3 = Quadrado(5, "/");
  quadrado3.exibirDados();
  quadrado3.desenhar();

  Quadrado quadrado4 = Quadrado(5, ".");
  quadrado4.exibirDados();
  quadrado4.desenhar();

  quadrado1.ehIgual(quadrado2);
  quadrado3.ehIgual(quadrado4);

}
