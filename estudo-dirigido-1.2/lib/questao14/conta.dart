class Conta {

  String _titular;
  double _saldo;

  Conta(this._titular, this._saldo) {
    if (_titular.isEmpty) {
      throw ArgumentError('O titular nao pode ser vazio');
    }
    if (_saldo < 0) {
      throw ArgumentError('O saldo nao pode ser negativo');
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

  exibir() {
    print("Titular: $_titular | Saldo: R\$ ${_saldo.toStringAsFixed(2)}");
    print("=======================================");
  }

}
