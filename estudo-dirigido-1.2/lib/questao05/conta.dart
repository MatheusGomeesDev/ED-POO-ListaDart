class Conta {

  String _numero;
  String _titular;
  double _saldo;

  Conta.bancaria(this._numero, this._titular) : _saldo = 0 {
    if (_numero.isEmpty) {
      throw ArgumentError('O numero nao pode ser vazio');
    }
    if (_titular.isEmpty) {
      throw ArgumentError('O titular nao pode ser vazio');
    }
  }

  Conta.vip(this._numero, this._titular, this._saldo) {
    if (_numero.isEmpty) {
      throw ArgumentError('O numero nao pode ser vazio');
    }
    if (_titular.isEmpty) {
      throw ArgumentError('O titular nao pode ser vazio');
    }
    if (_saldo < 0) {
      throw ArgumentError('O saldo inicial nao pode ser negativo');
    }
  }

  depositar(double valor) {
    if (valor <= 0) {
      throw ArgumentError('O valor deve ser maior que 0');
    }
    _saldo += valor;
  }

  sacar(double valor) {
    if (valor <= 0) {
      throw ArgumentError('O valor deve ser maior que 0');
    }
    if (valor > _saldo) {
      print("Saldo insuficiente!");
      return;
    }
    _saldo -= valor;
  }

  exibirResumo() {
    print("Conta: $_numero");
    print("Titular: $_titular");
    print("Saldo: R\$ ${_saldo.toStringAsFixed(2)}");
    print("=======================================");
  }

}
