class Comodo {

  String _nome;
  double _tamanho;

  Comodo(this._nome, this._tamanho) {
    if(_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if(_tamanho <= 0) {
      throw ArgumentError('O tamanho deve ser maior que 0');
    }
  }

  double get tamanho => _tamanho;

  exibirComodo() {
    print("Nome: $_nome");
    print("Tamanho: $_tamanho");
    print("---------------------------------------");
  }

}
