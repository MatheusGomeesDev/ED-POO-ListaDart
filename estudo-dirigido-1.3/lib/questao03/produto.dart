class Produto {

  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(this._nome, this._preco, this._estoque, this._ativo) {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (_preco < 0) {
      throw ArgumentError('O preco nao pode ser negativo');
    }
    if (_estoque < 0) {
      throw ArgumentError('O estoque nao pode ser negativo');
    }
  }

  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.isNotEmpty) {
      _nome = valor;
    }
  }

  set preco(double valor) {
    if (valor >= 0) {
      _preco = valor;
    }
  }

  set estoque(int valor) {
    if (valor >= 0) {
      _estoque = valor;
    }
  }

  set ativo(bool valor) {
    _ativo = valor;
  }

  ativar() {
    _ativo = true;
  }

  desativar() {
    _ativo = false;
  }

  reporEstoque(int quantidade) {
    if (quantidade > 0) {
      _estoque += quantidade;
    }
  }

  retirarEstoque(int quantidade) {
    if (quantidade <= 0) {
      return;
    }
    if (quantidade > _estoque) {
      print("Estoque insuficiente!");
      return;
    }
    _estoque -= quantidade;
  }

  exibirProduto() {
    print("Produto: $_nome");
    print("Preco: R\$ ${_preco.toStringAsFixed(2)}");
    print("Estoque: $_estoque unidades");
    print("Ativo: $_ativo");
    print("=======================================");
  }

}
