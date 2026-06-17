abstract class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (idade < 0) {
      throw ArgumentError('A idade nao pode ser negativa');
    }
  }

  void exibirDados();
}

class Aluno extends Pessoa {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso) : super(nome, idade) {
    if (matricula.isEmpty) {
      throw ArgumentError('A matricula nao pode ser vazia');
    }
    if (curso.isEmpty) {
      throw ArgumentError('O curso nao pode ser vazio');
    }
  }

  @override
  void exibirDados() {
    print("Tipo: Aluno");
    print("Nome: $nome");
    print("Idade: $idade");
    print("Matricula: $matricula");
    print("Curso: $curso");
    print("==============================================");
  }
}

class Professor extends Pessoa {
  String disciplina;
  double salario;

  Professor(String nome, int idade, this.disciplina, this.salario) : super(nome, idade) {
    if (disciplina.isEmpty) {
      throw ArgumentError('A disciplina nao pode ser vazia');
    }
    if (salario < 0) {
      throw ArgumentError('O salario nao pode ser negativo');
    }
  }

  @override
  void exibirDados() {
    print("Tipo: Professor");
    print("Nome: $nome");
    print("Idade: $idade");
    print("Disciplina: $disciplina");
    print("Salario: R\$ ${salario.toStringAsFixed(2)}");
    print("==============================================");
  }
}

void main() {
  Pessoa aluno = Aluno("Carlos", 20, "A001", "Analise e Desenvolvimento de Sistemas");
  Pessoa professor = Professor("Carla", 38, "POO", 2000.00);

  aluno.exibirDados();
  professor.exibirDados();
}
