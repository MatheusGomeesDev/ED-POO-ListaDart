import '../questao01/cliente.dart';
import 'lista_cliente.dart';

void main() {

  Cliente c1 = Cliente("Matheus", "matheus@email.com", 100.0, true);
  Cliente c2 = Cliente("Ana", "ana@email.com", 50.0, true);
  Cliente c3 = Cliente("Bruno", "bruno@email.com", 200.0, false);

  ListaCliente lista = ListaCliente();

  lista.inserir(c1);
  lista.inserir(c2);
  lista.inserir(c3);

  print("Lista completa:");
  lista.exibirLista();

  lista.remover(1);
  print("Tamanho apos remocao: ${lista.tamanho()}");

  Cliente? recuperado = lista.get(0);
  if (recuperado != null) {
    print("Cliente recuperado:");
    recuperado.exibirCliente();
  }

  print("Lista final:");
  lista.exibirLista();

}
