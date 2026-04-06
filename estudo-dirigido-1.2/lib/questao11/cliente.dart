import 'endereco.dart';

class Cliente {

  String _nome;
  Endereco _endereco;

  Cliente(this._nome, this._endereco) {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
  }

  Endereco get endereco => _endereco;

  Cliente.copia(Cliente outro)
      : _nome = outro._nome,
        _endereco = Endereco(
          outro._endereco.rua,
          outro._endereco.numero,
          outro._endereco.cidade,
        );

  exibir() {
    print("Nome: $_nome");
    _endereco.exibir();
    print("=======================================");
  }

}
