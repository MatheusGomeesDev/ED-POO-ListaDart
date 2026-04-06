class Usuario {

  String _nome;
  String _email;
  String _apelido;

  Usuario(String nome, this._email, [String? apelido])
      : _nome = nome,
        _apelido = apelido ?? nome {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (_email.isEmpty) {
      throw ArgumentError('O email nao pode ser vazio');
    }
  }

  exibirPerfil() {
    print("Nome: $_nome");
    print("Email: $_email");
    print("Apelido: $_apelido");
    print("=======================================");
  }

}
