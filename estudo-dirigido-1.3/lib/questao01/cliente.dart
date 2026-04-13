class Cliente {

  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo) {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (_email.isEmpty) {
      throw ArgumentError('O email nao pode ser vazio');
    }
    if (_saldoCarteira < 0) {
      throw ArgumentError('O saldo nao pode ser negativo');
    }
  }

  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.isNotEmpty) {
      _nome = valor;
    }
  }

  set email(String valor) {
    if (valor.isNotEmpty) {
      _email = valor;
    }
  }

  set saldoCarteira(double valor) {
    if (valor >= 0) {
      _saldoCarteira = valor;
    }
  }

  set ativo(bool valor) {
    _ativo = valor;
  }

  ativar() {
    _ativo = true;
  }

  desativar() {
    _ativo = false;
  }

  adicionarSaldo(double valor) {
    if (valor > 0) {
      _saldoCarteira += valor;
    }
  }

  debitarSaldo(double valor) {
    if (valor <= 0) {
      return;
    }
    if (valor > _saldoCarteira) {
      print("Saldo insuficiente!");
      return;
    }
    _saldoCarteira -= valor;
  }

  exibirCliente() {
    print("Nome: $_nome");
    print("Email: $_email");
    print("Saldo: R\$ ${_saldoCarteira.toStringAsFixed(2)}");
    print("Ativo: $_ativo");
    print("=======================================");
  }

}
