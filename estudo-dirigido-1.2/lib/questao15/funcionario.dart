class Funcionario {

  String _nome;
  String _cargo;
  double _salario;

  Funcionario.estagiario(this._nome)
      : _cargo = 'Estagiario',
        _salario = 1000 {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
  }

  Funcionario.pleno(this._nome, this._salario)
      : _cargo = 'Pleno' {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (_salario <= 0) {
      throw ArgumentError('O salario deve ser maior que 0');
    }
  }

  Funcionario.gerente({required String nome, double bonus = 1000})
      : _nome = nome,
        _cargo = 'Gerente',
        _salario = 5000 + bonus {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
  }

  double calcularPagamentoMensal() {
    return _salario;
  }

  exibirDados() {
    print("Nome: $_nome");
    print("Cargo: $_cargo");
    print("Salario: R\$ ${calcularPagamentoMensal().toStringAsFixed(2)}");
    print("=======================================");
  }

}
