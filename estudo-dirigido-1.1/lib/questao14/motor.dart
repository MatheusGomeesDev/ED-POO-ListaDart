class Motor {

  int _potencia;
  String _tipo;

  Motor(this._potencia, this._tipo) {
    if (_potencia <= 0) {
      throw ArgumentError('A potencia deve ser maior que 0');
    }
    if (_tipo.isEmpty) {
      throw ArgumentError('O tipo nao pode ser vazio');
    }
  }

  exibirMotor() {
    print("Potencia: $_potencia");
    print("Tipo: $_tipo");
  }

}
