class Televisao {

  int _canal;
  int _volume;

  Televisao(this._canal, this._volume) {
    if (_canal < 1) {
      throw ArgumentError('O canal deve ser maior que 0');
    }
    if (_volume < 0) {
      throw ArgumentError('O volume nao pode ser negativo');
    }
  }

  aumentarVolume() {
    _volume++;
  }

  diminuirVolume() {
    if (_volume > 0) {
      _volume--;
    }
  }

  proximoCanal() {
    _canal++;
  }

  canalAnterior() {
    if (_canal > 1) {
      _canal--;
    }
  }

  exibir() {
    print("Canal: $_canal | Volume: $_volume");
    print("=======================================");
  }

}
