import '../questao07/carrinho.dart';
import '../questao08/cupom_desconto.dart';

class Pedido {

  String _numero;
  Carrinho _carrinho;
  CupomDesconto? _cupom;
  double _totalBruto;
  double _totalFinal;
  String _status;

  Pedido(this._numero, this._carrinho, this._cupom)
      : _totalBruto = 0,
        _totalFinal = 0,
        _status = "aberto" {
    if (_numero.isEmpty) {
      throw ArgumentError('O numero nao pode ser vazio');
    }
  }

  String get numero => _numero;
  Carrinho get carrinho => _carrinho;
  CupomDesconto? get cupom => _cupom;
  double get totalBruto => _totalBruto;
  double get totalFinal => _totalFinal;
  String get status => _status;

  set numero(String valor) {
    if (valor.isNotEmpty) {
      _numero = valor;
    }
  }

  set carrinho(Carrinho valor) {
    _carrinho = valor;
  }

  set cupom(CupomDesconto? valor) {
    _cupom = valor;
  }

  set totalBruto(double valor) {
    if (valor >= 0) {
      _totalBruto = valor;
    }
  }

  set totalFinal(double valor) {
    if (valor >= 0) {
      _totalFinal = valor;
    }
  }

  set status(String valor) {
    if (valor == "aberto" || valor == "fechado" || valor == "cancelado") {
      _status = valor;
    }
  }

  fecharPedido() {
    _totalBruto = _carrinho.calcularTotal();
    if (_cupom != null && _cupom!.ativo) {
      double desconto = _cupom!.calcularDesconto(_totalBruto);
      _totalFinal = _totalBruto - desconto;
    } else {
      _totalFinal = _totalBruto;
    }
    _status = "fechado";
  }

  cancelarPedido() {
    _status = "cancelado";
  }

  exibirResumoPedido() {
    print("Pedido: $_numero");
    print("Status: $_status");
    print("Cliente: ${_carrinho.cliente.nome}");
    print("Total Bruto: R\$ ${_totalBruto.toStringAsFixed(2)}");
    if (_cupom != null) {
      print("Cupom: ${_cupom!.codigo} (${_cupom!.percentual}%)");
    }
    print("Total Final: R\$ ${_totalFinal.toStringAsFixed(2)}");
    print("=======================================");
  }

}
