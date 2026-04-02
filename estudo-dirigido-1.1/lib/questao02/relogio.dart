class Relogio {

  int _hora;
  int _minuto;
  int _segundo;

  Relogio(this._hora, this._minuto, this._segundo) {
    if (_hora < 1 || _hora > 23) {
      throw ArgumentError('Hora Invalida');
    }
    if (_minuto < 1 || _minuto > 59) {
      throw ArgumentError('Minuto Invalido');
    }
    if (_segundo < 1 || _segundo > 59) {
      throw ArgumentError('Segundo Invalidos');
    }
  }

  exibirHorario() {
    print("$_hora:$_minuto:$_segundo");
  }

}
