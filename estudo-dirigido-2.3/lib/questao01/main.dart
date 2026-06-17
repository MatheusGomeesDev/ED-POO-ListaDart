import 'lista_generica.dart';

abstract class Bonificavel {
  double calcularBonus();
}

abstract class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (salario < 0) {
      throw ArgumentError('O salario nao pode ser negativo');
    }
  }

  @override
  String toString() {
    return "Nome: $nome | Salario: R\$ ${salario.toStringAsFixed(2)}";
  }
}

class FuncionarioComum extends Funcionario implements Bonificavel {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  double calcularBonus() {
    return salario * 0.05;
  }

  @override
  String toString() {
    return "Funcionario Comum | Nome: $nome | Salario: R\$ ${salario.toStringAsFixed(2)} | Bonus: R\$ ${calcularBonus().toStringAsFixed(2)}";
  }
}

class Gerente extends Funcionario implements Bonificavel {
  String setor;

  Gerente(String nome, double salario, this.setor) : super(nome, salario) {
    if (setor.isEmpty) {
      throw ArgumentError('O setor nao pode ser vazio');
    }
  }

  @override
  double calcularBonus() {
    return salario * 0.15;
  }

  @override
  String toString() {
    return "Gerente | Nome: $nome | Salario: R\$ ${salario.toStringAsFixed(2)} | Setor: $setor | Bonus: R\$ ${calcularBonus().toStringAsFixed(2)}";
  }
}

void main() {
  ListaGenerica<Bonificavel> funcionarios = ListaGenerica<Bonificavel>();

  Bonificavel funcionario1 = FuncionarioComum("Ana", 2500.00);
  Bonificavel funcionario2 = FuncionarioComum("Bruno", 3200.00);
  Bonificavel funcionario3 = Gerente("Carla", 7000.00, "Financeiro");
  Bonificavel funcionario4 = FuncionarioComum("Diego", 2800.00);
  Bonificavel funcionario5 = Gerente("Elisa", 8500.00, "Tecnologia");

  funcionarios.adicionar(funcionario1);
  funcionarios.adicionar(funcionario2);
  funcionarios.adicionar(funcionario3);
  funcionarios.adicionar(funcionario4);
  funcionarios.adicionar(funcionario5);

  print("=== Impressao dos Funcionarios ===");
  funcionarios.imprimirItens();

  print("\n=== Bonus dos Funcionarios ===");
  for (var funcionario in funcionarios.obterItens()) {
    print("Bonus: R\$ ${funcionario.calcularBonus().toStringAsFixed(2)}");
  }
}
