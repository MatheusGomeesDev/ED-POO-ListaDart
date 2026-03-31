import 'produto.dart';
import 'pedido.dart';

void main() {

  Produto p1 = Produto(1, "Mouse", 50.0, 3);
  Produto p2 = Produto(2, "Teclado", 120.0, 8);

  Pedido pedido1 = Pedido(101, p1, 2);
  Pedido pedido2 = Pedido(102, p2, 1);

  pedido1.exibirPedido();
  pedido2.exibirPedido();

}
