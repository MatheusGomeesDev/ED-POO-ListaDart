class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo) {
    if (titular.isEmpty) {
      throw ArgumentError('O titular nao pode ser vazio');
    }
    if (saldo < 0) {
      throw ArgumentError('O saldo nao pode ser negativo');
    }
  }

  depositar(double valor) {
    if (valor <= 0) {
      throw ArgumentError('O valor do deposito deve ser maior que 0');
    }
    saldo += valor;
  }

  sacar(double valor) {
    if (valor <= 0) {
      throw ArgumentError('O valor do saque deve ser maior que 0');
    }
    if (valor > saldo) {
      throw ArgumentError('Saldo insuficiente');
    }
    saldo -= valor;
  }

  exibirSaldo() {
    print("Titular: $titular");
    print("Saldo: R\$ ${saldo.toStringAsFixed(2)}");
  }
}

abstract class Rentavel {
  void aplicarRendimento();
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.01;
  }

  @override
  exibirSaldo() {
    print("Tipo: Conta Poupanca");
    super.exibirSaldo();
    print("==============================================");
  }
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.05;
  }

  @override
  exibirSaldo() {
    print("Tipo: Conta Corrente");
    super.exibirSaldo();
    print("==============================================");
  }
}

void main() {
  ContaPoupanca poupanca = ContaPoupanca("Ana", 1000.00);
  ContaCorrente corrente = ContaCorrente("Bruno", 2000.00);

  poupanca.depositar(500.00);
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();

  corrente.sacar(300.00);
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}
