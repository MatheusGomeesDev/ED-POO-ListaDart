class Aluno {

  String _ra;
  String _nome;
  double _notaFinal;

  Aluno({required String ra, required String nome, required double notaFinal})
      : _ra = ra,
        _nome = nome,
        _notaFinal = notaFinal {
    if (_ra.isEmpty) {
      throw ArgumentError('O RA nao pode ser vazio');
    }
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (_notaFinal < 0 || _notaFinal > 10) {
      throw ArgumentError('A nota deve estar entre 0 e 10');
    }
  }

  bool aprovado() {
    return _notaFinal >= 7.0;
  }

  exibirBoletim() {
    print("RA: $_ra");
    print("Nome: $_nome");
    print("Nota Final: $_notaFinal");
    print("Situacao: ${aprovado() ? 'Aprovado' : 'Reprovado'}");
    print("=======================================");
  }

}
