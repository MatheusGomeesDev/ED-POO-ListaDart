import '../questao03/produto.dart';
import 'lista_produto.dart';

void main() {

  Produto p1 = Produto("Notebook", 3500.00, 10, true);
  Produto p2 = Produto("Mouse", 80.00, 50, true);
  Produto p3 = Produto("Teclado", 150.00, 30, true);

  ListaProduto lista = ListaProduto();

  lista.inserir(p1);
  lista.inserir(p2);
  lista.inserir(p3);

  print("Lista completa:");
  lista.exibirLista();

  lista.remover(1);
  print("Tamanho apos remocao: ${lista.tamanho()}");

  Produto? recuperado = lista.get(0);
  if (recuperado != null) {
    print("Produto recuperado:");
    recuperado.exibirProduto();
  }

  print("Lista final:");
  lista.exibirLista();

}
