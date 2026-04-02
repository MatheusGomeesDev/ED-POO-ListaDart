class Data {

  int _dia;
  int _mes;
  int _ano;

  Data(this._dia, this._mes, this._ano) {
    if (_dia < 1 || _dia > 31) {
      throw ArgumentError('Dia Invalido');
    }
    if (_mes < 1 || _mes > 12) {
      throw ArgumentError('Mes Invalido');
    }
    if (_ano < 1) {
      throw ArgumentError('Ano Invalido');
    }
  }

  exibirDia() {
    print("$_dia/$_mes/$_ano");
  }

}
