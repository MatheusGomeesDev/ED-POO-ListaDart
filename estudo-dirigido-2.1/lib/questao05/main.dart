class Pessoa {
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

  exibirDados() {
    print("Nome: $nome");
    print("Idade: $idade");
  }
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
  exibirDados() {
    super.exibirDados();
    print("Matricula: $matricula");
    print("Curso: $curso");
    print("==============================================");
  }
}

void main() {
  Aluno aluno = Aluno("Carlos", 20, "A001", "Analise e Desenvolvimento de Sistemas");

  print("--- Aluno ---");
  aluno.exibirDados();
}
