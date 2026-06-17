import 'lista_generica.dart';

abstract class Apresentavel {
  void exibirDados();
}

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
}

class Aluno extends Pessoa implements Apresentavel {
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

  @override
  String toString() {
    return "Aluno | Nome: $nome | Idade: $idade | Matricula: $matricula | Curso: $curso";
  }
}

class Professor extends Pessoa implements Apresentavel {
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

  @override
  String toString() {
    return "Professor | Nome: $nome | Idade: $idade | Disciplina: $disciplina | Salario: R\$ ${salario.toStringAsFixed(2)}";
  }
}

class Coordenador extends Pessoa implements Apresentavel {
  String area;
  int tempoExperiencia;

  Coordenador(String nome, int idade, this.area, this.tempoExperiencia) : super(nome, idade) {
    if (area.isEmpty) {
      throw ArgumentError('A area nao pode ser vazia');
    }
    if (tempoExperiencia < 0) {
      throw ArgumentError('O tempo de experiencia nao pode ser negativo');
    }
  }

  @override
  void exibirDados() {
    print("Tipo: Coordenador");
    print("Nome: $nome");
    print("Idade: $idade");
    print("Area: $area");
    print("Tempo de Experiencia: $tempoExperiencia anos");
    print("==============================================");
  }

  @override
  String toString() {
    return "Coordenador | Nome: $nome | Idade: $idade | Area: $area | Experiencia: $tempoExperiencia anos";
  }
}

void main() {
  ListaGenerica<Apresentavel> pessoas = ListaGenerica<Apresentavel>();

  Apresentavel p1 = Aluno("Ana", 19, "A001", "ADS");
  Apresentavel p2 = Aluno("Bruno", 22, "A002", "Engenharia de Software");
  Apresentavel p3 = Professor("Carla", 38, "POO", 2000.00);
  Apresentavel p4 = Professor("Diego", 41, "Banco de Dados", 1900.00);
  Apresentavel p5 = Coordenador("Elisa", 45, "Tecnologia", 15);

  pessoas.adicionar(p1);
  pessoas.adicionar(p2);
  pessoas.adicionar(p3);
  pessoas.adicionar(p4);
  pessoas.adicionar(p5);

  print("=== Impressao das Pessoas ===");
  pessoas.imprimirItens();

  print("\n=== Dados Detalhados ===");
  for (var pessoa in pessoas.obterItens()) {
    pessoa.exibirDados();
  }
}
