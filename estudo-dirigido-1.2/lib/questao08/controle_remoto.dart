import 'televisao.dart';

class ControleRemoto {

  Televisao _tv;

  ControleRemoto(this._tv);

  aumentarVolume() {
    _tv.aumentarVolume();
  }

  diminuirVolume() {
    _tv.diminuirVolume();
  }

  proximoCanal() {
    _tv.proximoCanal();
  }

  canalAnterior() {
    _tv.canalAnterior();
  }

}
