class Funcionario {
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

  exibirDados() {
    print("Nome: $nome");
    print("Salario: R\$ ${salario.toStringAsFixed(2)}");
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
  exibirDados() {
    super.exibirDados();
    print("Setor: $setor");
    print("==============================================");
  }
}

void main() {
  Funcionario funcionario = Funcionario("Joao", 2500.00);
  Funcionario gerente = Gerente("Maria", 6000.00, "Financeiro");

  print("--- Funcionario ---");
  funcionario.exibirDados();
  print("==============================================");
  print("--- Gerente ---");
  gerente.exibirDados();
}
