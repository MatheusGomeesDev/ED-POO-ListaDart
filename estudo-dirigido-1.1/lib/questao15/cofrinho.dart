class Cofrinho {

  double _saldo;
  int _quantidadeDepositos;

  Cofrinho(this._saldo, this._quantidadeDepositos) {
    if (_saldo < 0) {
      throw ArgumentError('O saldo inicial deve ser maior ou igual a 0');
    }
    if (_quantidadeDepositos != 0) {
      throw ArgumentError('A quantidade de depositos deve iniciar com 0');
    }
  }

  depositar(double valor) {
    if (valor <= 0) {
      throw ArgumentError('O valor do deposito deve ser maior que 0');
    }
    _saldo += valor;
    _quantidadeDepositos++;
  }

  quebrar() {
    print("Total acumulado: $_saldo");
    _saldo = 0;
    print("Cofrinho quebrado");
    print("=======================================");
  }

  exibirSaldo() {
    print("Saldo atual: $_saldo");
    print("Quantidade de depositos: $_quantidadeDepositos");
    print("=======================================");
  }

}
