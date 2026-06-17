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

abstract class Informativo {
  void exibirInformacoes();
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
}

void main() {
  LivroDigital digital = LivroDigital("Dart Basico", "Mariana Souza", 12.0);
  LivroFisico fisico = LivroFisico("Clean Code", "Robert Martin", 425);

  digital.exibirInformacoes();
  fisico.exibirInformacoes();
}
