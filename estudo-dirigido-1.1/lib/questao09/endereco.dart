class Endereco {

  String _rua;
  int _numero;
  String _bairro;
  String _cidade;
  String _estado;
  int _cep;

  Endereco(this._rua, this._numero, this._bairro, this._cidade, this._estado, this._cep) {
    if (_rua.isEmpty) {
      throw ArgumentError('A rua nao pode ser nula');
    }
    if (_numero < 1) {
      throw ArgumentError('O numero deve ser maior que zero');
    }
    if (_bairro.isEmpty) {
      throw ArgumentError('O bairro nao pode ser nulo');
    }
    if (_cidade.isEmpty) {
      throw ArgumentError('A cidade nao pode ser nula');
    }
    if (_estado.isEmpty) {
      throw ArgumentError('O estado nao pode ser nulo');
    }
    if (_cep.isNaN) {
      throw ArgumentError('O cep nao pode ser nulo');
    }
  }

  formatarCep() {
    String cepStr = _cep.toString().padLeft(8, '0');
    return "${cepStr.substring(0, 5)}-${cepStr.substring(5)}";
  }

  exibirEndereco() {
    print("Rua: $_rua");
    print("Numero: $_numero");
    print("Bairro: $_bairro");
    print("Cidade: $_cidade");
    print("Estado: $_estado");
    print("Cep: ${formatarCep()}");
    print("=====================");
  }

}
