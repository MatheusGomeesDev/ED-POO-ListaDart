import 'musica.dart';

class Playlist {

  String _nome;
  Musica _musica1;
  Musica _musica2;
  Musica _musica3;

  Playlist(this._nome, this._musica1, this._musica2, this._musica3) {
    if(_nome.isEmpty) {
      throw ArgumentError('O nome da playlist nao pode ser vazio');
    }
    if(_musica1 == null || _musica2 == null || _musica3 == null) {
      throw ArgumentError('Musicas invalidas');
    }
  }

  int calcularDuracaoTotal() {
    return _musica1.duracaoSegundos +
           _musica2.duracaoSegundos +
           _musica3.duracaoSegundos;
  }

  exibirPlaylist() {
    print("Nome da Playlist: $_nome");
    print("=======================================");
    _musica1.exibirMusica();
    _musica2.exibirMusica();
    _musica3.exibirMusica();
    print("Duracao Total: ${calcularDuracaoTotal()} segundos");
    print("=======================================");
  }

  tocarPlaylist() {
    print("Tocando Playlist: $_nome");
    print("=======================================");
    print("Tocando: ${_musica1.titulo} - ${_musica1.artista}");
    print("Tocando: ${_musica2.titulo} - ${_musica2.artista}");
    print("Tocando: ${_musica3.titulo} - ${_musica3.artista}");
    print("=======================================");
  }

}
