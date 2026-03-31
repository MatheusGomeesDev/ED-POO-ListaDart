class Aluno {

  String _nome;
  double _nota1;
  double _nota2;

  Aluno(this._nome, this._nota1, this._nota2);

  double calcularMedia() {
    double media = (_nota1+_nota2)/2;
    return media;
  }

  String verificarAprovacao(double media) {
    String aprovacao;
    if(media >= 6 && media <= 10) {
      aprovacao = "Aprovado";
      return aprovacao;
    } else if (media >= 0 && media < 6) {
      aprovacao = "Reprovado";
      return aprovacao;
    } else (
      throw ArgumentError('Media do Aluno $_nome Invalida')
    );
  }

  exibirBoletim(double media, String aprovacao) {
    print("Nome: $_nome");
    print("Nota 1: $_nota1");
    print("Nota 2: $_nota2");
    print("Media: $media");
    print("Situacao: $aprovacao");
    print("=======================================");
  }
}
