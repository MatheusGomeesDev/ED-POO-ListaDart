import 'produto.dart';

void main() {

  Produto produto = Produto("Notebook", 3500.00, 10);

  produto.exibirFicha();

  produto.vender(3);
  produto.exibirFicha();

  produto.repor(5);
  produto.exibirFicha();

}
