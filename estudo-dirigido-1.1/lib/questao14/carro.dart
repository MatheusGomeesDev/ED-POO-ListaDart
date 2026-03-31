import 'motor.dart';

class Carro {

  String _modelo;
  Motor _motor;

  Carro(this._modelo, this._motor) {
    if(_modelo.isEmpty) {
      throw ArgumentError('O modelo nao pode ser vazio');
    }
  }

  exibirCarro() {
    print("Modelo: $_modelo");
    print("Dados do Motor:");
    _motor.exibirMotor();
    print("=======================================");
  }

}
