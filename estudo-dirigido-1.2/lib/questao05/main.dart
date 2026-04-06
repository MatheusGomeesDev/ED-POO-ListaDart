import 'conta.dart';

void main() {

  Conta conta1 = Conta.bancaria("001", "Matheus");
  Conta conta2 = Conta.vip("002", "Ana", 5000.00);

  conta1.exibirResumo();
  conta2.exibirResumo();

  conta1.depositar(1000);
  conta1.exibirResumo();

  conta2.sacar(2000);
  conta2.exibirResumo();

}
