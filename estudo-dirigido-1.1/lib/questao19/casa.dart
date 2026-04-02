import 'comodo.dart';

class Casa {

  String _proprietario;
  Comodo _comodo1;
  Comodo _comodo2;
  Comodo _comodo3;

  Casa(this._proprietario, this._comodo1, this._comodo2, this._comodo3) {
    if (_proprietario.isEmpty) {
      throw ArgumentError('O proprietario nao pode ser vazio');
    }
    if (_comodo1 == null || _comodo2 == null || _comodo3 == null) {
      throw ArgumentError('Comodos invalidos');
    }
  }

  double calcularAreaTotal() {
    return _comodo1.tamanho +
           _comodo2.tamanho +
           _comodo3.tamanho;
  }

  exibirCasa() {
    print("Proprietario: $_proprietario");
    print("=======================================");
    _comodo1.exibirComodo();
    _comodo2.exibirComodo();
    _comodo3.exibirComodo();
    print("Area Total: ${calcularAreaTotal()}");
    print("=======================================");
  }

}
