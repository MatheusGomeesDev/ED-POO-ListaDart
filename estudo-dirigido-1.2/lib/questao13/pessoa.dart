import 'carteira.dart';

class Pessoa {

  String _nome;
  Carteira _carteira;

  Pessoa(this._nome, this._carteira) {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
  }

  Carteira get carteira => _carteira;

  exibir() {
    print('Pessoa: $_nome');
    _carteira.exibir();
  }

}
