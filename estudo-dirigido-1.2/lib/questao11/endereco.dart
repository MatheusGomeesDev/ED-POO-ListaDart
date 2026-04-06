class Endereco {

  String _rua;
  int _numero;
  String _cidade;

  Endereco(this._rua, this._numero, this._cidade) {
    if (_rua.isEmpty) {
      throw ArgumentError('A rua nao pode ser vazia');
    }
    if (_numero < 1) {
      throw ArgumentError('O numero deve ser maior que 0');
    }
    if (_cidade.isEmpty) {
      throw ArgumentError('A cidade nao pode ser vazia');
    }
  }

  String get rua => _rua;
  int get numero => _numero;
  String get cidade => _cidade;

  alterarRua(String novaRua) {
    _rua = novaRua;
  }

  exibir() {
    print("Rua: $_rua, $_numero - $_cidade");
  }

}
