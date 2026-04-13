import 'cliente.dart';

void main() {

  Cliente cliente1 = Cliente("Matheus", "matheus@email.com", 100.0, true);
  Cliente cliente2 = Cliente("Ana", "ana@email.com", 50.0, false);

  cliente1.nome = "Matheus Gomes";
  cliente2.email = "ana.nova@email.com";

  cliente1.adicionarSaldo(200.0);
  cliente2.debitarSaldo(30.0);

  cliente2.ativar();

  print("Dados finais:");
  cliente1.exibirCliente();
  cliente2.exibirCliente();

}
