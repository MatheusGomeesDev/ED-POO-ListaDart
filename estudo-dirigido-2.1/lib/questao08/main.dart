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

  exibirInformacoes() {
    print("Titulo: $titulo");
    print("Autor: $autor");
  }
}

class LivroDigital extends Livro {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo) : super(titulo, autor) {
    if (tamanhoArquivo <= 0) {
      throw ArgumentError('O tamanho do arquivo deve ser maior que 0');
    }
  }

  @override
  exibirInformacoes() {
    print("Tipo: Livro Digital");
    super.exibirInformacoes();
    print("Tamanho do Arquivo: ${tamanhoArquivo.toStringAsFixed(1)} MB");
    print("==============================================");
  }
}

void main() {
  LivroDigital livro = LivroDigital("Dart Basico", "Mariana Souza", 12.0);

  print("--- Livro Digital ---");
  livro.exibirInformacoes();
}
