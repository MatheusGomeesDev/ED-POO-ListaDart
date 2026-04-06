class Contato {

  String _nome;
  String _telefone;

  Contato(this._nome, this._telefone) {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (_telefone.isEmpty) {
      throw ArgumentError('O telefone nao pode ser vazio');
    }
  }

  String get nome => _nome;

  exibir() {
    print("Nome: $_nome | Telefone: $_telefone");
  }

}
