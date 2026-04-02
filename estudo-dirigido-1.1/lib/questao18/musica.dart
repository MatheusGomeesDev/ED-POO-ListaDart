class Musica {

  String _titulo;
  String _artista;
  int _duracaoSegundos;

  Musica(this._titulo, this._artista, this._duracaoSegundos) {
    if (_titulo.isEmpty) {
      throw ArgumentError('O titulo nao pode ser vazio');
    }
    if (_artista.isEmpty) {
      throw ArgumentError('O artista nao pode ser vazio');
    }
    if (_duracaoSegundos <= 0) {
      throw ArgumentError('A duracao deve ser maior que 0');
    }
  }

  String get titulo => _titulo;
  String get artista => _artista;
  int get duracaoSegundos => _duracaoSegundos;

  exibirMusica() {
    print("Titulo: $_titulo");
    print("Artista: $_artista");
    print("Duracao (s): $_duracaoSegundos");
    print("---------------------------------------");
  }

}
