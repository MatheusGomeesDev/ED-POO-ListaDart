import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import '../questao06/lista_carrinho.dart';
import 'carrinho.dart';

void main() {

  Cliente cliente = Cliente("Matheus", "matheus@email.com", 500.0, true);

  Produto p1 = Produto("Notebook", 3500.00, 10, true);
  Produto p2 = Produto("Mouse", 80.00, 50, true);
  Produto p3 = Produto("Teclado", 150.00, 30, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);
  ItemCarrinho item3 = ItemCarrinho(p3, 1);

  ListaCarrinho listaItens = ListaCarrinho();
  Carrinho carrinho = Carrinho(cliente, listaItens, true);

  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);
  carrinho.adicionarItem(item3);

  print("Dados do carrinho:");
  carrinho.exibirCarrinho();

}
