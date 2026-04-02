import 'produto.dart';

class Pedido {

  int _numero;
  Produto _produto;
  int _quantidade;

  Pedido(this._numero, this._produto, this._quantidade) {
    if (_numero < 1) {
      throw ArgumentError('O numero deve ser maior que 0');
    }
    if (_quantidade < 1) {
      throw ArgumentError('A quantidade deve ser maior que 0');
    }
  }

  double calcularTotal() {
    return _produto.precoUnitario * _quantidade;
  }

  exibirPedido() {
    print("Numero do Pedido: $_numero");
    print("Dados do Produto:");
    _produto.exibirResumo(_produto.calcularDesconto()*100, _produto.calcularTotal(_produto.calcularDesconto()));
    print("Quantidade no Pedido: $_quantidade");
    print("Total do Pedido: ${calcularTotal()}");
    print("=======================================");
  }

}
