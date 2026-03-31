import 'cofrinho.dart';

void main() {

  Cofrinho cofrinho = Cofrinho(0, 0);

  cofrinho.depositar(10);
  cofrinho.depositar(5.5);
  cofrinho.depositar(20);

  cofrinho.exibirSaldo();

  cofrinho.quebrar();

  cofrinho.exibirSaldo();

}
