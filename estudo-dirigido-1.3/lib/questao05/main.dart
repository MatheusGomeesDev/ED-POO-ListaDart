import '../questao03/produto.dart';
import 'item_carrinho.dart';

void main() {

  Produto p1 = Produto("Notebook", 3500.00, 10, true);
  Produto p2 = Produto("Mouse", 80.00, 50, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 2);
  ItemCarrinho item2 = ItemCarrinho(p2, 5);

  item1.quantidade = 3;
  item2.quantidade = 10;

  print("Itens do carrinho:");
  item1.exibirItem();
  item2.exibirItem();

}
