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

  void exibirDados();
}

class FuncionarioComum extends Funcionario {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  void exibirDados() {
    print("Tipo: Funcionario Comum");
    print("Nome: $nome");
    print("Salario: R\$ ${salario.toStringAsFixed(2)}");
    print("==============================================");
  }
}

class Gerente extends Funcionario {
  String setor;

  Gerente(String nome, double salario, this.setor) : super(nome, salario) {
    if (setor.isEmpty) {
      throw ArgumentError('O setor nao pode ser vazio');
    }
  }

  @override
  void exibirDados() {
    print("Tipo: Gerente");
    print("Nome: $nome");
    print("Salario: R\$ ${salario.toStringAsFixed(2)}");
    print("Setor: $setor");
    print("==============================================");
  }
}

void main() {
  Funcionario funcionario = FuncionarioComum("Joao", 2500.00);
  Funcionario gerente = Gerente("Maria", 6000.00, "Financeiro");

  funcionario.exibirDados();
  gerente.exibirDados();
}
