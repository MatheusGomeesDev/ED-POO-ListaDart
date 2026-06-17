import 'lista_generica.dart';

abstract class Informativo {
  void exibirInformacoes();
}

class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor) {
    if (titulo.isEmpty) {
      throw ArgumentError('O titulo nao pode ser vazio');
    }
    if (autor.isEmpty) {
      throw ArgumentError('O autor nao pode ser vazio');
    }
  }
}

class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo) : super(titulo, autor) {
    if (tamanhoArquivo <= 0) {
      throw ArgumentError('O tamanho do arquivo deve ser maior que 0');
    }
  }

  @override
  void exibirInformacoes() {
    print("Tipo: Livro Digital");
    print("Titulo: $titulo");
    print("Autor: $autor");
    print("Tamanho do Arquivo: ${tamanhoArquivo.toStringAsFixed(1)} MB");
    print("==============================================");
  }

  @override
  String toString() {
    return "Livro Digital | Titulo: $titulo | Autor: $autor | Tamanho: ${tamanhoArquivo.toStringAsFixed(1)} MB";
  }
}

class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String titulo, String autor, this.quantidadePaginas) : super(titulo, autor) {
    if (quantidadePaginas < 1) {
      throw ArgumentError('A quantidade de paginas deve ser maior que 0');
    }
  }

  @override
  void exibirInformacoes() {
    print("Tipo: Livro Fisico");
    print("Titulo: $titulo");
    print("Autor: $autor");
    print("Quantidade de Paginas: $quantidadePaginas");
    print("==============================================");
  }

  @override
  String toString() {
    return "Livro Fisico | Titulo: $titulo | Autor: $autor | Paginas: $quantidadePaginas";
  }
}

class Audiobook extends Livro implements Informativo {
  int duracaoMinutos;

  Audiobook(String titulo, String autor, this.duracaoMinutos) : super(titulo, autor) {
    if (duracaoMinutos < 1) {
      throw ArgumentError('A duracao deve ser maior que 0');
    }
  }

  @override
  void exibirInformacoes() {
    print("Tipo: Audiobook");
    print("Titulo: $titulo");
    print("Autor: $autor");
    print("Duracao: $duracaoMinutos minutos");
    print("==============================================");
  }

  @override
  String toString() {
    return "Audiobook | Titulo: $titulo | Autor: $autor | Duracao: $duracaoMinutos min";
  }
}

void main() {
  ListaGenerica<Informativo> livros = ListaGenerica<Informativo>();

  Informativo l1 = LivroFisico("Clean Code", "Robert Martin", 425);
  Informativo l2 = LivroDigital("Dart Basico", "Mariana Souza", 12.0);
  Informativo l3 = Audiobook("POO na Pratica", "Carlos Lima", 180);
  Informativo l4 = LivroFisico("Algoritmos Modernos", "Ana Torres", 350);
  Informativo l5 = LivroDigital("Flutter Essencial", "Pedro Alves", 25.0);

  livros.adicionar(l1);
  livros.adicionar(l2);
  livros.adicionar(l3);
  livros.adicionar(l4);
  livros.adicionar(l5);

  print("=== Impressao dos Livros ===");
  livros.imprimirItens();

  print("\n=== Informacoes Detalhadas ===");
  for (var livro in livros.obterItens()) {
    livro.exibirInformacoes();
  }
}
