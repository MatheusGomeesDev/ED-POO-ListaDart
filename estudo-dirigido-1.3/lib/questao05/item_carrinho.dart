import '../questao03/produto.dart';

class ItemCarrinho {

  Produto _produto;
  int _quantidade;

  ItemCarrinho(this._produto, this._quantidade) {
    if (_quantidade <= 0) {
      throw ArgumentError('A quantidade deve ser maior que zero');
    }
  }

  Produto get produto => _produto;
  int get quantidade => _quantidade;

  set produto(Produto valor) {
    _produto = valor;
  }

  set quantidade(int valor) {
    if (valor > 0) {
      _quantidade = valor;
    }
  }

  double calcularSubtotal() {
    return _produto.preco * _quantidade;
  }

  exibirItem() {
    print("Produto: ${_produto.nome}");
    print("Preco unitario: R\$ ${_produto.preco.toStringAsFixed(2)}");
    print("Quantidade: $_quantidade");
    print("Subtotal: R\$ ${calcularSubtotal().toStringAsFixed(2)}");
    print("=======================================");
  }

}
