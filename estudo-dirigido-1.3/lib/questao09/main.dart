import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import '../questao06/lista_carrinho.dart';
import '../questao07/carrinho.dart';
import '../questao08/cupom_desconto.dart';
import 'pedido.dart';

void main() {

  Cliente cliente = Cliente("Matheus", "matheus@email.com", 500.0, true);

  Produto p1 = Produto("Notebook", 3500.00, 10, true);
  Produto p2 = Produto("Mouse", 80.00, 50, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);

  ListaCarrinho listaItens = ListaCarrinho();
  Carrinho carrinho = Carrinho(cliente, listaItens, true);

  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);

  CupomDesconto cupom = CupomDesconto("DESC10", 10.0, true);

  Pedido pedido = Pedido("PED001", carrinho, cupom);
  pedido.fecharPedido();

  print("Resumo do pedido:");
  pedido.exibirResumoPedido();

}
