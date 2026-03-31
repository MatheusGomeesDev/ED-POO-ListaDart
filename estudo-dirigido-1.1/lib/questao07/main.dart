import 'contador.dart';

void main() {

  Contador contador1 = Contador(0);
  Contador contador2 = Contador(5);


  print("Operacoes Contador 1: ");
  contador1.incrementar();
  contador1.exibirValor();
  contador1.decrementar();
  contador1.decrementar();
  contador1.exibirValor();


  print("Operacoes Contador 2: ");
  contador2.zerar();
  contador2.exibirValor();

}
