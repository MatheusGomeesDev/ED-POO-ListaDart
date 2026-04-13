import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import 'lista_carrinho.dart';

void main() {

  Produto p1 = Produto("Notebook", 3500.00, 10, true);
  Produto p2 = Produto("Mouse", 80.00, 50, true);
  Produto p3 = Produto("Teclado", 150.00, 30, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 3);
  ItemCarrinho item3 = ItemCarrinho(p3, 2);

  ListaCarrinho lista = ListaCarrinho();

  lista.inserir(item1);
  lista.inserir(item2);
  lista.inserir(item3);

  print("Lista completa:");
  lista.exibirLista();

  lista.remover(1);
  print("Tamanho apos remocao: ${lista.tamanho()}");

  ItemCarrinho? recuperado = lista.get(0);
  if (recuperado != null) {
    print("Item recuperado:");
    recuperado.exibirItem();
  }

  print("Lista final:");
  lista.exibirLista();

}
