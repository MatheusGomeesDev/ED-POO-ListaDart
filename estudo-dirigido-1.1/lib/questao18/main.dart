import 'musica.dart';
import 'playlist.dart';

void main() {

  Musica m1 = Musica("Musica A", "Artista A", 180);
  Musica m2 = Musica("Musica B", "Artista B", 200);
  Musica m3 = Musica("Musica C", "Artista C", 240);

  Playlist playlist = Playlist("Minha Playlist", m1, m2, m3);

  playlist.exibirPlaylist();
  playlist.tocarPlaylist();

}
