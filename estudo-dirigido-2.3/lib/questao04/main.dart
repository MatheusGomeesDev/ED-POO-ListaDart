import 'lista_generica.dart';

abstract class Rentavel {
  void aplicarRendimento();
}

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

  @override
  String toString() {
    return "Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}";
  }
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.01;
  }

  @override
  String toString() {
    return "Conta Poupanca | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}";
  }
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.05;
  }

  @override
  String toString() {
    return "Conta Corrente | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}";
  }
}

class ContaInvestimento extends ContaBancaria implements Rentavel {
  ContaInvestimento(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.08;
  }

  @override
  String toString() {
    return "Conta Investimento | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}";
  }
}

void main() {
  ListaGenerica<Rentavel> contas = ListaGenerica<Rentavel>();

  Rentavel c1 = ContaPoupanca("Ana", 1000.00);
  Rentavel c2 = ContaCorrente("Bruno", 1500.00);
  Rentavel c3 = ContaInvestimento("Carla", 5000.00);
  Rentavel c4 = ContaPoupanca("Diego", 2500.00);
  Rentavel c5 = ContaCorrente("Elisa", 800.00);

  contas.adicionar(c1);
  contas.adicionar(c2);
  contas.adicionar(c3);
  contas.adicionar(c4);
  contas.adicionar(c5);

  print("=== Saldos Antes do Rendimento ===");
  contas.imprimirItens();

  print("\n=== Aplicando Rendimentos ===");
  for (var conta in contas.obterItens()) {
    conta.aplicarRendimento();
  }

  print("\n=== Saldos Apos o Rendimento ===");
  contas.imprimirItens();
}
