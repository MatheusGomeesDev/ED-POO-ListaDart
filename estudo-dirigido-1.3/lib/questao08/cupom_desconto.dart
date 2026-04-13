class CupomDesconto {

  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(this._codigo, this._percentual, this._ativo) {
    if (_codigo.isEmpty) {
      throw ArgumentError('O codigo nao pode ser vazio');
    }
    if (_percentual < 0 || _percentual > 100) {
      throw ArgumentError('O percentual deve estar entre 0 e 100');
    }
  }

  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  set codigo(String valor) {
    if (valor.isNotEmpty) {
      _codigo = valor;
    }
  }

  set percentual(double valor) {
    if (valor >= 0 && valor <= 100) {
      _percentual = valor;
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

  double calcularDesconto(double valor) {
    if (_ativo) {
      return valor * (_percentual / 100);
    }
    return 0;
  }

  exibirCupom() {
    print("Codigo: $_codigo");
    print("Percentual: ${_percentual.toStringAsFixed(1)}%");
    print("Ativo: $_ativo");
    print("=======================================");
  }

}
