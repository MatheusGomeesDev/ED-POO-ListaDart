class Produto {

  String _nome;
  double _preco;
  int _estoque;

  Produto(this._nome, this._preco, this._estoque) {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (_preco <= 0) {
      throw ArgumentError('O preco deve ser maior que 0');
    }
    if (_estoque < 0) {
      throw ArgumentError('O estoque nao pode ser negativo');
    }
  }

  repor(int qtd) {
    if (qtd <= 0) {
      throw ArgumentError('A quantidade deve ser maior que 0');
    }
    _estoque += qtd;
  }

  vender(int qtd) {
    if (qtd <= 0) {
      throw ArgumentError('A quantidade deve ser maior que 0');
    }
    if (qtd > _estoque) {
      print("Estoque insuficiente!");
      return;
    }
    _estoque -= qtd;
  }

  exibirFicha() {
    print("Produto: $_nome");
    print("Preco: R\$ ${_preco.toStringAsFixed(2)}");
    print("Estoque: $_estoque unidades");
    print("=======================================");
  }

}
