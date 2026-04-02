class Pokemon {

  int _numero;
  String _nome;
  String _tipo;
  int _nivel;
  int _hp;

  Pokemon(this._numero, this._nome, this._tipo, this._nivel, this._hp) {
    if (_numero < 1) {
      throw ArgumentError('Numero invalido');
    }
    if (_nome.isEmpty) {
      throw ArgumentError('Nome nao pode ser vazio');
    }
    if (_tipo.isEmpty) {
      throw ArgumentError('Tipo nao pode ser vazio');
    }
    if (_nivel < 1 || _nivel > 100) {
      throw ArgumentError('Nivel deve estar entre 1 e 100');
    }
    if (_hp <= 0) {
      throw ArgumentError('HP deve ser maior que 0');
    }
  }

  int get nivel => _nivel;

  exibirPokemon() {
    print("Numero: $_numero");
    print("Nome: $_nome");
    print("Tipo: $_tipo");
    print("Nivel: $_nivel");
    print("HP: $_hp");
    print("---------------------------------------");
  }

}
