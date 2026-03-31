class Produto {

  int _codigo;
  String _nome;
  double _precoUnitario;
  int _quantidade;

  Produto(this._codigo, this._nome, this._precoUnitario, this._quantidade) {
    if(_codigo < 1) {
      throw ArgumentError('O codigo deve ser maior que 0');
    }
    if(_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if(_precoUnitario <= 0) {
      throw ArgumentError('O preco unitario deve ser maior que 0');
    }
    if(_quantidade < 1) {
      throw ArgumentError('A quantidade deve ser maior que 0');
    }
  }

  double calcularDesconto() {
    if(_quantidade < 5 && _quantidade > 0) {
      return 0;
    }
    if(_quantidade > 4 && _quantidade < 10) {
      return 0.05;
    }
    if(_quantidade > 9 && _quantidade < 20) {
      return 0.1;
    }
    if(_quantidade > 19) {
      return 0.15;
    }
    throw ArgumentError('Quantidade invalida');
  }

  double calcularTotal(double desconto) {
    return (_precoUnitario*_quantidade)-((_precoUnitario*_quantidade)*desconto);
  }

  exibirResumo(double desconto, double valorTotal) {
    print("Codigo: $_codigo");
    print("Nome: $_nome");
    print("Preco Unitario: $_precoUnitario");
    print("Quantidade: $_quantidade");
    print("Desconto: $desconto%");
    print("Valor Total: $valorTotal");
  }

}
