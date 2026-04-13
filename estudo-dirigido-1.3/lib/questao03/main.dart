import 'produto.dart';

void main() {

  Produto p1 = Produto("Notebook", 3500.00, 10, true);
  Produto p2 = Produto("Mouse", 80.00, 50, true);

  p1.nome = "Notebook Gamer";
  p2.preco = 99.90;

  p1.reporEstoque(5);
  p2.retirarEstoque(10);

  print("Dados finais:");
  p1.exibirProduto();
  p2.exibirProduto();

}
