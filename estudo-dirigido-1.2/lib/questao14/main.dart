import 'conta.dart';
import 'gerente.dart';

void main() {

  Conta conta = Conta('Fernanda', 1000);
  Gerente g1 = Gerente('Marcos');
  Gerente g2 = Gerente('Patricia');

  print('Estado inicial:');
  conta.exibir();

  g1.depositar(conta, 200);
  conta.exibir();

  g2.sacar(conta, 150);
  conta.exibir();

}

// a) Por que os dois gerentes conseguem alterar o mesmo saldo?
// Porque ambos os gerentes recebem a mesma referencia do objeto Conta como parametro.
// Ao chamar depositar() ou sacar(), eles estao manipulando o mesmo objeto na memoria.

// b) Cada gerente possui uma conta propria ou ambos estao operando sobre a mesma instancia?
// Ambos estao operando sobre a mesma instancia de Conta. 
//A conta e passada como parametro por referencia, entao g1 e g2 acessam
// e modificam o mesmo objeto.

// c) O que esse exercicio mostra sobre compartilhamento de referencia entre objetos?
// Mostra que em Dart, quando passamos um objeto como parametro para diferentes metodos
// ou objetos, todos compartilham a mesma referencia. Isso permite que multiplos objetos
// manipulem o mesmo recurso, mas tambem exige cuidado, pois
// alteracoes feitas por um afetam todos os outros que compartilham a referencia.
