import '../questao01/cliente.dart';
import '../questao02/lista_cliente.dart';
import '../questao03/produto.dart';
import '../questao04/lista_produto.dart';
import '../questao05/item_carrinho.dart';
import '../questao06/lista_carrinho.dart';
import '../questao07/carrinho.dart';
import '../questao08/cupom_desconto.dart';
import '../questao09/pedido.dart';
import 'loja.dart';

void main() {

  Cliente c1 = Cliente("Matheus", "matheus@email.com", 500.0, true);
  Cliente c2 = Cliente("Ana", "ana@email.com", 300.0, true);

  Produto p1 = Produto("Notebook", 3500.00, 10, true);
  Produto p2 = Produto("Mouse", 80.00, 50, true);
  Produto p3 = Produto("Teclado", 150.00, 30, true);

  ListaCliente listaClientes = ListaCliente();
  ListaProduto listaProdutos = ListaProduto();

  Loja loja = Loja("TechStore", listaClientes, listaProdutos);

  loja.cadastrarCliente(c1);
  loja.cadastrarCliente(c2);

  loja.cadastrarProduto(p1);
  loja.cadastrarProduto(p2);
  loja.cadastrarProduto(p3);

  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);

  ListaCarrinho listaItens = ListaCarrinho();
  Carrinho carrinho = Carrinho(c1, listaItens, true);

  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);

  CupomDesconto cupom = CupomDesconto("DESC10", 10.0, true);
  Pedido pedido = Pedido("PED001", carrinho, cupom);
  pedido.fecharPedido();

  loja.registrarPedido(pedido);

  print("Resumo geral da loja:");
  loja.exibirResumoLoja();

}
