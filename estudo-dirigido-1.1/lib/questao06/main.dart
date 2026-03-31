import 'produto.dart';

void main() {

  Produto produto = Produto(1, "teste", 1.5, 10);

  produto.exibirResumo(produto.calcularDesconto()*100, produto.calcularTotal(produto.calcularDesconto()));

}
